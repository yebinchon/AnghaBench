
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref {int dummy; } ;
struct loop {int dummy; } ;
typedef int edge ;
typedef int bitmap ;


 int BITMAP_ALLOC (int *) ;
 int BITMAP_FREE (int ) ;
 int find_more_ref_vops (struct mem_ref*,int ) ;
 int free (int *) ;
 int free_mem_refs (struct mem_ref*) ;
 struct mem_ref* gather_mem_refs (struct loop*,int ) ;
 int * get_loop_exit_edges (struct loop*,unsigned int*) ;
 int hoist_memory_references (struct loop*,struct mem_ref*,int ,int *,unsigned int) ;
 int loop_suitable_for_sm (struct loop*,int *,unsigned int) ;

__attribute__((used)) static void
determine_lsm_loop (struct loop *loop)
{
  unsigned n_exits;
  edge *exits = get_loop_exit_edges (loop, &n_exits);
  bitmap clobbered_vops;
  struct mem_ref *mem_refs;

  if (!loop_suitable_for_sm (loop, exits, n_exits))
    {
      free (exits);
      return;
    }


  clobbered_vops = BITMAP_ALLOC (((void*)0));
  mem_refs = gather_mem_refs (loop, clobbered_vops);


  find_more_ref_vops (mem_refs, clobbered_vops);


  hoist_memory_references (loop, mem_refs, clobbered_vops, exits, n_exits);

  free_mem_refs (mem_refs);
  free (exits);
  BITMAP_FREE (clobbered_vops);
}
