
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_niter_desc {int dummy; } ;
struct mem_ref_group {struct mem_ref* refs; struct mem_ref_group* next; } ;
struct mem_ref {unsigned int prefetch_mod; struct mem_ref* next; } ;
struct loop {int dummy; } ;


 int PARAM_MAX_UNROLLED_INSNS ;
 int PARAM_MAX_UNROLL_TIMES ;
 unsigned int PARAM_VALUE (int ) ;
 unsigned int SIMULTANEOUS_PREFETCHES ;
 scalar_t__ should_issue_prefetch_p (struct mem_ref*) ;
 int should_unroll_loop_p (struct loop*,struct tree_niter_desc*,unsigned int) ;

__attribute__((used)) static unsigned
determine_unroll_factor (struct loop *loop, struct mem_ref_group *refs,
    unsigned ahead, unsigned ninsns,
    struct tree_niter_desc *desc)
{
  unsigned upper_bound, size_factor, constraint_factor;
  unsigned factor, max_mod_constraint, ahead_factor;
  struct mem_ref_group *agp;
  struct mem_ref *ref;

  upper_bound = PARAM_VALUE (PARAM_MAX_UNROLL_TIMES);


  size_factor = PARAM_VALUE (PARAM_MAX_UNROLLED_INSNS) / ninsns;
  if (size_factor <= 1)
    return 1;

  if (size_factor < upper_bound)
    upper_bound = size_factor;

  max_mod_constraint = 1;
  for (agp = refs; agp; agp = agp->next)
    for (ref = agp->refs; ref; ref = ref->next)
      if (should_issue_prefetch_p (ref)
   && ref->prefetch_mod > max_mod_constraint)
 max_mod_constraint = ref->prefetch_mod;



  constraint_factor = max_mod_constraint;




  ahead_factor = ((ahead + SIMULTANEOUS_PREFETCHES - 1)
    / SIMULTANEOUS_PREFETCHES);


  if (constraint_factor < ahead_factor)
    factor = ahead_factor;
  else
    factor = constraint_factor;
  if (factor > upper_bound)
    factor = upper_bound;

  if (!should_unroll_loop_p (loop, desc, factor))
    return 1;

  return factor;
}
