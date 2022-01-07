
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct xfrm_state {TYPE_1__ km; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {scalar_t__ sadb_msg_type; int sadb_msg_pid; int sadb_msg_seq; } ;
struct net {int dummy; } ;
struct km_event {int pid; int seq; int event; } ;


 scalar_t__ IS_ERR (struct xfrm_state*) ;
 int PTR_ERR (struct xfrm_state*) ;
 scalar_t__ SADB_ADD ;
 int XFRM_MSG_NEWSA ;
 int XFRM_MSG_UPDSA ;
 int XFRM_STATE_DEAD ;
 int __xfrm_state_put (struct xfrm_state*) ;
 int audit_get_loginuid (int ) ;
 int audit_get_sessionid (int ) ;
 int current ;
 int km_state_notify (struct xfrm_state*,struct km_event*) ;
 struct xfrm_state* pfkey_msg2xfrm_state (struct net*,struct sadb_msg*,void**) ;
 struct net* sock_net (struct sock*) ;
 int xfrm_audit_state_add (struct xfrm_state*,int,int ,int ,int ) ;
 int xfrm_state_add (struct xfrm_state*) ;
 int xfrm_state_hold (struct xfrm_state*) ;
 int xfrm_state_put (struct xfrm_state*) ;
 int xfrm_state_update (struct xfrm_state*) ;

__attribute__((used)) static int pfkey_add(struct sock *sk, struct sk_buff *skb, struct sadb_msg *hdr, void **ext_hdrs)
{
 struct net *net = sock_net(sk);
 struct xfrm_state *x;
 int err;
 struct km_event c;

 x = pfkey_msg2xfrm_state(net, hdr, ext_hdrs);
 if (IS_ERR(x))
  return PTR_ERR(x);

 xfrm_state_hold(x);
 if (hdr->sadb_msg_type == SADB_ADD)
  err = xfrm_state_add(x);
 else
  err = xfrm_state_update(x);

 xfrm_audit_state_add(x, err ? 0 : 1,
        audit_get_loginuid(current),
        audit_get_sessionid(current), 0);

 if (err < 0) {
  x->km.state = XFRM_STATE_DEAD;
  __xfrm_state_put(x);
  goto out;
 }

 if (hdr->sadb_msg_type == SADB_ADD)
  c.event = XFRM_MSG_NEWSA;
 else
  c.event = XFRM_MSG_UPDSA;
 c.seq = hdr->sadb_msg_seq;
 c.pid = hdr->sadb_msg_pid;
 km_state_notify(x, &c);
out:
 xfrm_state_put(x);
 return err;
}
