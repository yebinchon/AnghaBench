
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct xfrm_user_sec_ctx {int dummy; } ;
struct TYPE_4__ {int dead; } ;
struct TYPE_3__ {void* hard_packet_limit; void* soft_packet_limit; void* hard_byte_limit; void* soft_byte_limit; } ;
struct xfrm_policy {int family; TYPE_2__ walk; int security; scalar_t__ xfrm_nr; TYPE_1__ lft; int action; } ;
struct sock {int sk_family; } ;
struct sadb_x_sec_ctx {int sadb_x_sec_len; } ;
struct sadb_x_policy {int sadb_x_policy_len; scalar_t__ sadb_x_policy_type; int sadb_x_policy_dir; } ;
struct net {int dummy; } ;




 int EINVAL ;
 int ENOBUFS ;
 int EOPNOTSUPP ;
 int GFP_ATOMIC ;
 int IPSEC_DIR_OUTBOUND ;
 scalar_t__ IPSEC_POLICY_BYPASS ;
 scalar_t__ IPSEC_POLICY_DISCARD ;
 scalar_t__ IPSEC_POLICY_IPSEC ;
 int IPV6_IPSEC_POLICY ;
 int IP_IPSEC_POLICY ;
 void* XFRM_INF ;
 int XFRM_POLICY_ALLOW ;
 int XFRM_POLICY_BLOCK ;
 int kfree (struct xfrm_user_sec_ctx*) ;
 int parse_ipsecrequests (struct xfrm_policy*,struct sadb_x_policy*) ;
 struct xfrm_user_sec_ctx* pfkey_sadb2xfrm_user_sec_ctx (struct sadb_x_sec_ctx*) ;
 int security_xfrm_policy_alloc (int *,struct xfrm_user_sec_ctx*) ;
 struct net* sock_net (struct sock*) ;
 int verify_sec_ctx_len (char*) ;
 struct xfrm_policy* xfrm_policy_alloc (struct net*,int ) ;
 int xfrm_policy_destroy (struct xfrm_policy*) ;

__attribute__((used)) static struct xfrm_policy *pfkey_compile_policy(struct sock *sk, int opt,
      u8 *data, int len, int *dir)
{
 struct net *net = sock_net(sk);
 struct xfrm_policy *xp;
 struct sadb_x_policy *pol = (struct sadb_x_policy*)data;
 struct sadb_x_sec_ctx *sec_ctx;

 switch (sk->sk_family) {
 case 129:
  if (opt != IP_IPSEC_POLICY) {
   *dir = -EOPNOTSUPP;
   return ((void*)0);
  }
  break;
 default:
  *dir = -EINVAL;
  return ((void*)0);
 }

 *dir = -EINVAL;

 if (len < sizeof(struct sadb_x_policy) ||
     pol->sadb_x_policy_len*8 > len ||
     pol->sadb_x_policy_type > IPSEC_POLICY_BYPASS ||
     (!pol->sadb_x_policy_dir || pol->sadb_x_policy_dir > IPSEC_DIR_OUTBOUND))
  return ((void*)0);

 xp = xfrm_policy_alloc(net, GFP_ATOMIC);
 if (xp == ((void*)0)) {
  *dir = -ENOBUFS;
  return ((void*)0);
 }

 xp->action = (pol->sadb_x_policy_type == IPSEC_POLICY_DISCARD ?
        XFRM_POLICY_BLOCK : XFRM_POLICY_ALLOW);

 xp->lft.soft_byte_limit = XFRM_INF;
 xp->lft.hard_byte_limit = XFRM_INF;
 xp->lft.soft_packet_limit = XFRM_INF;
 xp->lft.hard_packet_limit = XFRM_INF;
 xp->family = sk->sk_family;

 xp->xfrm_nr = 0;
 if (pol->sadb_x_policy_type == IPSEC_POLICY_IPSEC &&
     (*dir = parse_ipsecrequests(xp, pol)) < 0)
  goto out;


 if (len >= (pol->sadb_x_policy_len*8 +
     sizeof(struct sadb_x_sec_ctx))) {
  char *p = (char *)pol;
  struct xfrm_user_sec_ctx *uctx;

  p += pol->sadb_x_policy_len*8;
  sec_ctx = (struct sadb_x_sec_ctx *)p;
  if (len < pol->sadb_x_policy_len*8 +
      sec_ctx->sadb_x_sec_len) {
   *dir = -EINVAL;
   goto out;
  }
  if ((*dir = verify_sec_ctx_len(p)))
   goto out;
  uctx = pfkey_sadb2xfrm_user_sec_ctx(sec_ctx);
  *dir = security_xfrm_policy_alloc(&xp->security, uctx);
  kfree(uctx);

  if (*dir)
   goto out;
 }

 *dir = pol->sadb_x_policy_dir-1;
 return xp;

out:
 xp->walk.dead = 1;
 xfrm_policy_destroy(xp);
 return ((void*)0);
}
