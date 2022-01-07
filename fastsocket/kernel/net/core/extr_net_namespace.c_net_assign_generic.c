
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_generic {int len; void** ptr; int rcu; } ;
struct net {struct net_generic* gen; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int call_rcu (int *,int ) ;
 int memcpy (void***,void***,int) ;
 int mutex_is_locked (int *) ;
 struct net_generic* net_alloc_generic () ;
 int net_generic_release ;
 int net_mutex ;
 int rcu_assign_pointer (struct net_generic*,struct net_generic*) ;

int net_assign_generic(struct net *net, int id, void *data)
{
 struct net_generic *ng, *old_ng;

 BUG_ON(!mutex_is_locked(&net_mutex));
 BUG_ON(id == 0);

 ng = old_ng = net->gen;
 if (old_ng->len >= id)
  goto assign;

 ng = net_alloc_generic();
 if (ng == ((void*)0))
  return -ENOMEM;
 memcpy(&ng->ptr, &old_ng->ptr, old_ng->len * sizeof(void*));

 rcu_assign_pointer(net->gen, ng);
 call_rcu(&old_ng->rcu, net_generic_release);
assign:
 ng->ptr[id - 1] = data;
 return 0;
}
