
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ expires; } ;
struct nf_conn {TYPE_3__ timeout; TYPE_1__* tuplehash; } ;
struct TYPE_6__ {int sysctl_events_retry_timeout; int dying; } ;
struct net {TYPE_2__ ct; } ;
struct TYPE_5__ {int hnnode; } ;


 size_t IP_CT_DIR_ORIGINAL ;
 int add_timer (TYPE_3__*) ;
 int death_by_event ;
 int hlist_nulls_add_head (int *,int *) ;
 scalar_t__ jiffies ;
 int nf_conntrack_lock ;
 struct net* nf_ct_net (struct nf_conn*) ;
 int random32 () ;
 int setup_timer (TYPE_3__*,int ,unsigned long) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void nf_ct_insert_dying_list(struct nf_conn *ct)
{
 struct net *net = nf_ct_net(ct);


 spin_lock_bh(&nf_conntrack_lock);
 hlist_nulls_add_head(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode,
        &net->ct.dying);
 spin_unlock_bh(&nf_conntrack_lock);

 setup_timer(&ct->timeout, death_by_event, (unsigned long)ct);
 ct->timeout.expires = jiffies +
  (random32() % net->ct.sysctl_events_retry_timeout);
 add_timer(&ct->timeout);
}
