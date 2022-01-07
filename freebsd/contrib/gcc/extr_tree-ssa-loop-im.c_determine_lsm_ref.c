
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ref_loc {int stmt; struct mem_ref_loc* next; } ;
struct mem_ref {struct mem_ref_loc* locs; int mem; int vops; int is_stored; } ;
struct loop {int dummy; } ;
typedef int edge ;
typedef int bitmap ;
struct TYPE_2__ {struct loop* always_executed_in; } ;


 TYPE_1__* LIM_DATA (int ) ;
 scalar_t__ bitmap_intersect_p (int ,int ) ;
 scalar_t__ flow_loop_nested_p (struct loop*,struct loop*) ;
 int schedule_sm (struct loop*,int *,unsigned int,int ,struct mem_ref_loc*) ;
 scalar_t__ tree_could_trap_p (int ) ;

__attribute__((used)) static void
determine_lsm_ref (struct loop *loop, edge *exits, unsigned n_exits,
     bitmap clobbered_vops, struct mem_ref *ref)
{
  struct mem_ref_loc *aref;
  struct loop *must_exec;


  if (!ref->is_stored)
    return;



  if (bitmap_intersect_p (ref->vops, clobbered_vops))
    return;

  if (tree_could_trap_p (ref->mem))
    {
      for (aref = ref->locs; aref; aref = aref->next)
 {
   if (!LIM_DATA (aref->stmt))
     continue;

   must_exec = LIM_DATA (aref->stmt)->always_executed_in;
   if (!must_exec)
     continue;

   if (must_exec == loop
       || flow_loop_nested_p (must_exec, loop))
     break;
 }

      if (!aref)
 return;
    }

  schedule_sm (loop, exits, n_exits, ref->mem, ref->locs);
}
