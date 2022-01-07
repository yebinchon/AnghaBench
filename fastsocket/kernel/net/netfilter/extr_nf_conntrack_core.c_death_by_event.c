
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ expires; } ;
struct nf_conn {TYPE_2__* tuplehash; int status; TYPE_3__ timeout; } ;
struct TYPE_4__ {int sysctl_events_retry_timeout; } ;
struct net {TYPE_1__ ct; } ;
struct TYPE_5__ {int hnnode; } ;


 int IPCT_DESTROY ;
 int IPS_DYING_BIT ;
 size_t IP_CT_DIR_ORIGINAL ;
 int add_timer (TYPE_3__*) ;
 int hlist_nulls_del (int *) ;
 scalar_t__ jiffies ;
 scalar_t__ nf_conntrack_event (int ,struct nf_conn*) ;
 int nf_conntrack_lock ;
 struct net* nf_ct_net (struct nf_conn*) ;
 int nf_ct_put (struct nf_conn*) ;
 int random32 () ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void death_by_event(unsigned long ul_conntrack)
{
 struct nf_conn *ct = (void *)ul_conntrack;
 struct net *net = nf_ct_net(ct);

 if (nf_conntrack_event(IPCT_DESTROY, ct) < 0) {

  ct->timeout.expires = jiffies +
   (random32() % net->ct.sysctl_events_retry_timeout);
  add_timer(&ct->timeout);
  return;
 }

 set_bit(IPS_DYING_BIT, &ct->status);
 spin_lock(&nf_conntrack_lock);
 hlist_nulls_del(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode);
 spin_unlock(&nf_conntrack_lock);
 nf_ct_put(ct);
}
