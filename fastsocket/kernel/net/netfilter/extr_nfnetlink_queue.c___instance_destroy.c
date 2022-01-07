
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfqnl_instance {int rcu; int hlist; } ;


 int call_rcu (int *,int ) ;
 int hlist_del_rcu (int *) ;
 int instance_destroy_rcu ;

__attribute__((used)) static void
__instance_destroy(struct nfqnl_instance *inst)
{
 hlist_del_rcu(&inst->hlist);
 call_rcu(&inst->rcu, instance_destroy_rcu);
}
