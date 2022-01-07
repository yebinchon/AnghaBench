
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subscription {int subscription_list; } ;
struct TYPE_2__ {int subscription_count; } ;


 int atomic_dec (int *) ;
 int kfree (struct subscription*) ;
 int list_del (int *) ;
 int tipc_nametbl_unsubscribe (struct subscription*) ;
 TYPE_1__ topsrv ;

__attribute__((used)) static void subscr_del(struct subscription *sub)
{
 tipc_nametbl_unsubscribe(sub);
 list_del(&sub->subscription_list);
 kfree(sub);
 atomic_dec(&topsrv.subscription_count);
}
