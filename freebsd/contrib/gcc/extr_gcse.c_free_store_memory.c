
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ae_gen ;
 int * ae_kill ;
 int free_ldst_mems () ;
 int * pre_delete_map ;
 int * pre_insert_map ;
 int * reg_set_in_block ;
 int sbitmap_vector_free (int *) ;
 int * st_antloc ;
 int * transp ;

__attribute__((used)) static void
free_store_memory (void)
{
  free_ldst_mems ();

  if (ae_gen)
    sbitmap_vector_free (ae_gen);
  if (ae_kill)
    sbitmap_vector_free (ae_kill);
  if (transp)
    sbitmap_vector_free (transp);
  if (st_antloc)
    sbitmap_vector_free (st_antloc);
  if (pre_insert_map)
    sbitmap_vector_free (pre_insert_map);
  if (pre_delete_map)
    sbitmap_vector_free (pre_delete_map);
  if (reg_set_in_block)
    sbitmap_vector_free (reg_set_in_block);

  ae_gen = ae_kill = transp = st_antloc = ((void*)0);
  pre_insert_map = pre_delete_map = reg_set_in_block = ((void*)0);
}
