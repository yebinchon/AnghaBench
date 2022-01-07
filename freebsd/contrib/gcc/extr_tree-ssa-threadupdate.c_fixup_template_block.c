
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redirection_data {scalar_t__ dup_block; } ;
struct local_info {scalar_t__ template_block; } ;


 int create_edge_and_update_destination_phis (struct redirection_data*) ;

__attribute__((used)) static int
fixup_template_block (void **slot, void *data)
{
  struct redirection_data *rd = (struct redirection_data *) *slot;
  struct local_info *local_info = (struct local_info *)data;



  if (rd->dup_block && rd->dup_block == local_info->template_block)
    {
      create_edge_and_update_destination_phis (rd);
      return 0;
    }

  return 1;
}
