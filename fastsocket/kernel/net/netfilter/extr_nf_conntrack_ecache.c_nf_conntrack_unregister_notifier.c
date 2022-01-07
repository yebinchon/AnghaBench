
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_event_notifier {int dummy; } ;


 int BUG_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_conntrack_event_cb ;
 int nf_ct_ecache_mutex ;
 int rcu_assign_pointer (int ,int *) ;
 struct nf_ct_event_notifier* rcu_dereference (int ) ;

void nf_conntrack_unregister_notifier(struct nf_ct_event_notifier *new)
{
 struct nf_ct_event_notifier *notify;

 mutex_lock(&nf_ct_ecache_mutex);
 notify = rcu_dereference(nf_conntrack_event_cb);
 BUG_ON(notify != new);
 rcu_assign_pointer(nf_conntrack_event_cb, ((void*)0));
 mutex_unlock(&nf_ct_ecache_mutex);
}
