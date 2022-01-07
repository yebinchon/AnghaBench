
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redirection_data {int * dup_block; scalar_t__ do_not_duplicate; } ;
struct local_info {int * template_block; int * bb; } ;


 int create_block_for_threading (int *,struct redirection_data*) ;
 int create_edge_and_update_destination_phis (struct redirection_data*) ;

__attribute__((used)) static int
create_duplicates (void **slot, void *data)
{
  struct redirection_data *rd = (struct redirection_data *) *slot;
  struct local_info *local_info = (struct local_info *)data;



  if (rd->do_not_duplicate)
    return 1;



  if (local_info->template_block == ((void*)0))
    {
      create_block_for_threading (local_info->bb, rd);
      local_info->template_block = rd->dup_block;




    }
  else
    {
      create_block_for_threading (local_info->template_block, rd);



      create_edge_and_update_destination_phis (rd);
    }


  return 1;
}
