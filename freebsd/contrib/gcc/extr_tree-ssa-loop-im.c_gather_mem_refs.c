
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref {int dummy; } ;
struct loop {unsigned int num_nodes; } ;
typedef int htab_t ;
typedef int block_stmt_iterator ;
typedef int bitmap ;
typedef int basic_block ;


 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (int ) ;
 int bsi_stmt (int ) ;
 int free (int *) ;
 int gather_mem_refs_stmt (struct loop*,int ,int ,int ,struct mem_ref**) ;
 int * get_loop_body (struct loop*) ;
 int htab_create (int,int ,int ,int *) ;
 int htab_delete (int ) ;
 int memref_eq ;
 int memref_hash ;

__attribute__((used)) static struct mem_ref *
gather_mem_refs (struct loop *loop, bitmap clobbered_vops)
{
  basic_block *body = get_loop_body (loop);
  block_stmt_iterator bsi;
  unsigned i;
  struct mem_ref *mem_ref_list = ((void*)0);
  htab_t mem_refs = htab_create (100, memref_hash, memref_eq, ((void*)0));

  for (i = 0; i < loop->num_nodes; i++)
    {
      for (bsi = bsi_start (body[i]); !bsi_end_p (bsi); bsi_next (&bsi))
 gather_mem_refs_stmt (loop, mem_refs, clobbered_vops, bsi_stmt (bsi),
         &mem_ref_list);
    }

  free (body);

  htab_delete (mem_refs);
  return mem_ref_list;
}
