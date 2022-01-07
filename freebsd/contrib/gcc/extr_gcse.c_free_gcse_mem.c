
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITMAP_FREE (int ) ;
 int blocks_with_calls ;
 int cuid_insn ;
 int free (int ) ;
 int free_modify_mem_tables () ;
 int modify_mem_list_set ;
 int reg_set_bitmap ;
 int reg_set_in_block ;
 int sbitmap_vector_free (int ) ;
 int uid_cuid ;

__attribute__((used)) static void
free_gcse_mem (void)
{
  free (uid_cuid);
  free (cuid_insn);

  BITMAP_FREE (reg_set_bitmap);

  sbitmap_vector_free (reg_set_in_block);
  free_modify_mem_tables ();
  BITMAP_FREE (modify_mem_list_set);
  BITMAP_FREE (blocks_with_calls);
}
