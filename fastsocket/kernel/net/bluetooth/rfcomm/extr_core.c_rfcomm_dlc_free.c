
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {int tx_queue; } ;


 int BT_DBG (char*,struct rfcomm_dlc*) ;
 int kfree (struct rfcomm_dlc*) ;
 int skb_queue_purge (int *) ;

void rfcomm_dlc_free(struct rfcomm_dlc *d)
{
 BT_DBG("%p", d);

 skb_queue_purge(&d->tx_queue);
 kfree(d);
}
