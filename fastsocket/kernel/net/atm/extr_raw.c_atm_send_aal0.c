
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct atm_vcc {int vpi; int vci; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* send ) (struct atm_vcc*,struct sk_buff*) ;} ;


 int ATM_HDR_VCI_MASK ;
 int ATM_HDR_VCI_SHIFT ;
 int ATM_HDR_VPI_MASK ;
 int ATM_HDR_VPI_SHIFT ;
 int CAP_NET_ADMIN ;
 int EADDRNOTAVAIL ;
 int capable (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;

__attribute__((used)) static int atm_send_aal0(struct atm_vcc *vcc,struct sk_buff *skb)
{




 if (!capable(CAP_NET_ADMIN) &&
     (((u32 *) skb->data)[0] & (ATM_HDR_VPI_MASK | ATM_HDR_VCI_MASK)) !=
     ((vcc->vpi << ATM_HDR_VPI_SHIFT) | (vcc->vci << ATM_HDR_VCI_SHIFT)))
     {
  kfree_skb(skb);
  return -EADDRNOTAVAIL;
 }
 return vcc->dev->ops->send(vcc,skb);
}
