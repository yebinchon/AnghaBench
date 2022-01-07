
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_notifier_block {size_t plane_idx; int nb; } ;


 int blocking_notifier_chain_unregister (int *,int *) ;
 int * omapfb_client_list ;

int omapfb_unregister_client(struct omapfb_notifier_block *omapfb_nb)
{
 return blocking_notifier_chain_unregister(
  &omapfb_client_list[omapfb_nb->plane_idx], &omapfb_nb->nb);
}
