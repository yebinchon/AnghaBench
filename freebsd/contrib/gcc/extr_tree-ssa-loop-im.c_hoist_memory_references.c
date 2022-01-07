
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref {struct mem_ref* next; } ;
struct loop {int dummy; } ;
typedef int edge ;
typedef int bitmap ;


 int determine_lsm_ref (struct loop*,int *,unsigned int,int ,struct mem_ref*) ;

__attribute__((used)) static void
hoist_memory_references (struct loop *loop, struct mem_ref *mem_refs,
    bitmap clobbered_vops, edge *exits, unsigned n_exits)
{
  struct mem_ref *ref;

  for (ref = mem_refs; ref; ref = ref->next)
    determine_lsm_ref (loop, exits, n_exits, clobbered_vops, ref);
}
