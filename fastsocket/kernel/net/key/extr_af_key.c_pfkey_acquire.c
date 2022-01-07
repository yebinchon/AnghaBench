
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
struct xfrm_state {int lock; TYPE_1__ km; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_len; scalar_t__ sadb_msg_seq; scalar_t__ sadb_msg_errno; } ;
struct TYPE_4__ {int km_waitq; } ;
struct net {TYPE_2__ xfrm; } ;


 int DUMMY_MARK ;
 int EOPNOTSUPP ;
 scalar_t__ XFRM_STATE_ACQ ;
 scalar_t__ XFRM_STATE_ERROR ;
 struct net* sock_net (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up (int *) ;
 struct xfrm_state* xfrm_find_acq_byseq (struct net*,int ,scalar_t__) ;
 int xfrm_state_put (struct xfrm_state*) ;

__attribute__((used)) static int pfkey_acquire(struct sock *sk, struct sk_buff *skb, struct sadb_msg *hdr, void **ext_hdrs)
{
 struct net *net = sock_net(sk);
 struct xfrm_state *x;

 if (hdr->sadb_msg_len != sizeof(struct sadb_msg)/8)
  return -EOPNOTSUPP;

 if (hdr->sadb_msg_seq == 0 || hdr->sadb_msg_errno == 0)
  return 0;

 x = xfrm_find_acq_byseq(net, DUMMY_MARK, hdr->sadb_msg_seq);
 if (x == ((void*)0))
  return 0;

 spin_lock_bh(&x->lock);
 if (x->km.state == XFRM_STATE_ACQ) {
  x->km.state = XFRM_STATE_ERROR;
  wake_up(&net->xfrm.km_waitq);
 }
 spin_unlock_bh(&x->lock);
 xfrm_state_put(x);
 return 0;
}
