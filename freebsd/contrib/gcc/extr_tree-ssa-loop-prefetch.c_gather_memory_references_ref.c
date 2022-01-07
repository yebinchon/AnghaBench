
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct mem_ref_group {int dummy; } ;
struct loop {int dummy; } ;
typedef int HOST_WIDE_INT ;


 int analyze_ref (struct loop*,int *,int *,int *,int *,int ) ;
 struct mem_ref_group* find_or_create_group (struct mem_ref_group**,int ,int ) ;
 int record_ref (struct mem_ref_group*,int ,int ,int ,int) ;

__attribute__((used)) static void
gather_memory_references_ref (struct loop *loop, struct mem_ref_group **refs,
         tree ref, bool write_p, tree stmt)
{
  tree base;
  HOST_WIDE_INT step, delta;
  struct mem_ref_group *agrp;

  if (!analyze_ref (loop, &ref, &base, &step, &delta, stmt))
    return;



  agrp = find_or_create_group (refs, base, step);
  record_ref (agrp, stmt, ref, delta, write_p);
}
