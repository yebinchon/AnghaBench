
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int napi_list; int name; } ;
struct napi_struct {int (* poll ) (struct napi_struct*,int) ;int weight; int poll_owner; int state; int poll_lock; struct net_device* dev; int dev_list; int * skb; int * gro_list; scalar_t__ gro_count; int poll_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int NAPI_POLL_WEIGHT ;
 int NAPI_STATE_SCHED ;
 int list_add (int *,int *) ;
 int pr_err_once (char*,int,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;

void netif_napi_add(struct net_device *dev, struct napi_struct *napi,
      int (*poll)(struct napi_struct *, int), int weight)
{
 INIT_LIST_HEAD(&napi->poll_list);
 napi->gro_count = 0;
 napi->gro_list = ((void*)0);
 napi->skb = ((void*)0);
 napi->poll = poll;





 napi->weight = weight;
 list_add(&napi->dev_list, &dev->napi_list);
 napi->dev = dev;




 set_bit(NAPI_STATE_SCHED, &napi->state);
}
