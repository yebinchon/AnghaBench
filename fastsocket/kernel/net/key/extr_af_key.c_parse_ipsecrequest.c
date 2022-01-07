
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int daddr; int proto; } ;
struct xfrm_tmpl {int mode; int optional; scalar_t__ reqid; int encap_family; int allalgs; TYPE_1__ id; int saddr; } ;
struct xfrm_policy {int xfrm_nr; int family; struct xfrm_tmpl* xfrm_vec; } ;
struct sockaddr {int dummy; } ;
struct sadb_x_ipsecrequest {scalar_t__ sadb_x_ipsecrequest_mode; scalar_t__ sadb_x_ipsecrequest_level; scalar_t__ sadb_x_ipsecrequest_reqid; int sadb_x_ipsecrequest_proto; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int ELOOP ;
 int ENOBUFS ;
 scalar_t__ IPSEC_LEVEL_UNIQUE ;
 scalar_t__ IPSEC_LEVEL_USE ;
 scalar_t__ IPSEC_MANUAL_REQID_MAX ;
 scalar_t__ XFRM_MAX_DEPTH ;
 int XFRM_MODE_TUNNEL ;
 scalar_t__ gen_reqid (struct net*) ;
 int pfkey_mode_to_xfrm (scalar_t__) ;
 int pfkey_sockaddr_extract (struct sockaddr*,int *) ;
 int pfkey_sockaddr_len (int) ;
 struct net* xp_net (struct xfrm_policy*) ;

__attribute__((used)) static int
parse_ipsecrequest(struct xfrm_policy *xp, struct sadb_x_ipsecrequest *rq)
{
 struct net *net = xp_net(xp);
 struct xfrm_tmpl *t = xp->xfrm_vec + xp->xfrm_nr;
 int mode;

 if (xp->xfrm_nr >= XFRM_MAX_DEPTH)
  return -ELOOP;

 if (rq->sadb_x_ipsecrequest_mode == 0)
  return -EINVAL;

 t->id.proto = rq->sadb_x_ipsecrequest_proto;
 if ((mode = pfkey_mode_to_xfrm(rq->sadb_x_ipsecrequest_mode)) < 0)
  return -EINVAL;
 t->mode = mode;
 if (rq->sadb_x_ipsecrequest_level == IPSEC_LEVEL_USE)
  t->optional = 1;
 else if (rq->sadb_x_ipsecrequest_level == IPSEC_LEVEL_UNIQUE) {
  t->reqid = rq->sadb_x_ipsecrequest_reqid;
  if (t->reqid > IPSEC_MANUAL_REQID_MAX)
   t->reqid = 0;
  if (!t->reqid && !(t->reqid = gen_reqid(net)))
   return -ENOBUFS;
 }


 if (t->mode == XFRM_MODE_TUNNEL) {
  u8 *sa = (u8 *) (rq + 1);
  int family, socklen;

  family = pfkey_sockaddr_extract((struct sockaddr *)sa,
      &t->saddr);
  if (!family)
   return -EINVAL;

  socklen = pfkey_sockaddr_len(family);
  if (pfkey_sockaddr_extract((struct sockaddr *)(sa + socklen),
        &t->id.daddr) != family)
   return -EINVAL;
  t->encap_family = family;
 } else
  t->encap_family = xp->family;


 t->allalgs = 1;
 xp->xfrm_nr++;
 return 0;
}
