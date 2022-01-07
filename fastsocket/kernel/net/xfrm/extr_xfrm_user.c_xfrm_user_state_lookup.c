
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u32 ;
struct xfrm_usersa_id {int family; int proto; int daddr; int spi; } ;
struct xfrm_state {int dummy; } ;
struct xfrm_mark {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int ESRCH ;
 int IPSEC_PROTO_ANY ;
 int XFRMA_SRCADDR ;
 int verify_one_addr (struct nlattr**,int ,int **) ;
 scalar_t__ xfrm_id_proto_match (int ,int ) ;
 int xfrm_mark_get (struct nlattr**,struct xfrm_mark*) ;
 struct xfrm_state* xfrm_state_lookup_byaddr (struct net*,int ,int *,int *,int ,int ) ;
 struct xfrm_state* xfrm_state_lookup_with_mark (struct net*,int ,int *,int ,int ,int ) ;

__attribute__((used)) static struct xfrm_state *xfrm_user_state_lookup(struct net *net,
       struct xfrm_usersa_id *p,
       struct nlattr **attrs,
       int *errp)
{
 struct xfrm_state *x = ((void*)0);
 struct xfrm_mark m;
 int err;
 u32 mark = xfrm_mark_get(attrs, &m);

 if (xfrm_id_proto_match(p->proto, IPSEC_PROTO_ANY)) {
  err = -ESRCH;
  x = xfrm_state_lookup_with_mark(net, mark, &p->daddr, p->spi, p->proto, p->family);
 } else {
  xfrm_address_t *saddr = ((void*)0);

  verify_one_addr(attrs, XFRMA_SRCADDR, &saddr);
  if (!saddr) {
   err = -EINVAL;
   goto out;
  }

  err = -ESRCH;
  x = xfrm_state_lookup_byaddr(net, mark,
          &p->daddr, saddr,
          p->proto, p->family);
 }

 out:
 if (!x && errp)
  *errp = err;
 return x;
}
