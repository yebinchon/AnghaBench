
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lec_vcc_priv {scalar_t__ xoff; int old_pop; } ;
struct lec_arp_table {struct atm_vcc* recv_vcc; int old_recv_push; struct atm_vcc* vcc; int old_push; } ;
struct atm_vcc {int push; int * user_back; int pop; scalar_t__ proto_data; } ;


 int EPIPE ;
 struct lec_vcc_priv* LEC_VCC_PRIV (struct atm_vcc*) ;
 int kfree (struct lec_vcc_priv*) ;
 int netif_wake_queue (struct net_device*) ;
 int vcc_release_async (struct atm_vcc*,int ) ;

__attribute__((used)) static void lec_arp_clear_vccs(struct lec_arp_table *entry)
{
 if (entry->vcc) {
  struct atm_vcc *vcc = entry->vcc;
  struct lec_vcc_priv *vpriv = LEC_VCC_PRIV(vcc);
  struct net_device *dev = (struct net_device *)vcc->proto_data;

  vcc->pop = vpriv->old_pop;
  if (vpriv->xoff)
   netif_wake_queue(dev);
  kfree(vpriv);
  vcc->user_back = ((void*)0);
  vcc->push = entry->old_push;
  vcc_release_async(vcc, -EPIPE);
  entry->vcc = ((void*)0);
 }
 if (entry->recv_vcc) {
  entry->recv_vcc->push = entry->old_recv_push;
  vcc_release_async(entry->recv_vcc, -EPIPE);
  entry->recv_vcc = ((void*)0);
 }
}
