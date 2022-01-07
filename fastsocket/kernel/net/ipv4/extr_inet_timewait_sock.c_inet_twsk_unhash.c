
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_timewait_sock {int tw_node; } ;


 int hlist_nulls_del_rcu (int *) ;
 scalar_t__ hlist_nulls_unhashed (int *) ;
 int sk_nulls_node_init (int *) ;

int inet_twsk_unhash(struct inet_timewait_sock *tw)
{
 if (hlist_nulls_unhashed(&tw->tw_node))
  return 0;

 hlist_nulls_del_rcu(&tw->tw_node);
 sk_nulls_node_init(&tw->tw_node);
 return 1;
}
