
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lec_priv {int lec_arp_work; int lec_arp_lock; int mcast_fwds; int lec_no_forward; int lec_arp_empty_ones; int * lec_arp_tables; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_HLIST_HEAD (int *) ;
 int LEC_ARP_REFRESH_INTERVAL ;
 unsigned short LEC_ARP_TABLE_SIZE ;
 int lec_arp_check_expire ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void lec_arp_init(struct lec_priv *priv)
{
 unsigned short i;

 for (i = 0; i < LEC_ARP_TABLE_SIZE; i++) {
  INIT_HLIST_HEAD(&priv->lec_arp_tables[i]);
 }
 INIT_HLIST_HEAD(&priv->lec_arp_empty_ones);
 INIT_HLIST_HEAD(&priv->lec_no_forward);
 INIT_HLIST_HEAD(&priv->mcast_fwds);
 spin_lock_init(&priv->lec_arp_lock);
 INIT_DELAYED_WORK(&priv->lec_arp_work, lec_arp_check_expire);
 schedule_delayed_work(&priv->lec_arp_work, LEC_ARP_REFRESH_INTERVAL);
}
