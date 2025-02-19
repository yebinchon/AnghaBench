
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lec_priv {int lec_arp_lock; } ;
struct lec_arp_table {int next; TYPE_1__* recv_vcc; scalar_t__ vcc; int timer; scalar_t__ priv; } ;
struct TYPE_2__ {int vci; int vpi; } ;


 int del_timer (int *) ;
 int hlist_del (int *) ;
 int lec_arp_clear_vccs (struct lec_arp_table*) ;
 int lec_arp_put (struct lec_arp_table*) ;
 int pr_debug (char*,struct lec_arp_table*,struct lec_priv*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lec_arp_expire_vcc(unsigned long data)
{
 unsigned long flags;
 struct lec_arp_table *to_remove = (struct lec_arp_table *)data;
 struct lec_priv *priv = (struct lec_priv *)to_remove->priv;

 del_timer(&to_remove->timer);

 pr_debug("LEC_ARP %p %p: lec_arp_expire_vcc vpi:%d vci:%d\n",
  to_remove, priv,
  to_remove->vcc ? to_remove->recv_vcc->vpi : 0,
  to_remove->vcc ? to_remove->recv_vcc->vci : 0);

 spin_lock_irqsave(&priv->lec_arp_lock, flags);
 hlist_del(&to_remove->next);
 spin_unlock_irqrestore(&priv->lec_arp_lock, flags);

 lec_arp_clear_vccs(to_remove);
 lec_arp_put(to_remove);
}
