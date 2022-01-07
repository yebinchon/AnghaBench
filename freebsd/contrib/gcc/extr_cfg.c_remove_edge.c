
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int edge ;


 int disconnect_dest (int ) ;
 int disconnect_src (int ) ;
 int execute_on_shrinking_pred (int ) ;
 int free_edge (int ) ;
 int remove_predictions_associated_with_edge (int ) ;

void
remove_edge (edge e)
{
  remove_predictions_associated_with_edge (e);
  execute_on_shrinking_pred (e);

  disconnect_src (e);
  disconnect_dest (e);

  free_edge (e);
}
