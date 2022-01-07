
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef scalar_t__ uint16_t ;
struct xfrm_state {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {unsigned short sa_family; } ;
struct sadb_sa {int sadb_sa_spi; } ;
struct sadb_msg {int sadb_msg_satype; } ;
struct sadb_address {int dummy; } ;
struct net {int dummy; } ;




 int DUMMY_MARK ;
 int SADB_EXT_ADDRESS_DST ;
 int SADB_EXT_SA ;
 scalar_t__ pfkey_satype2proto (int ) ;
 struct xfrm_state* xfrm_state_lookup_with_mark (struct net*,int ,int *,int ,scalar_t__,unsigned short) ;

__attribute__((used)) static struct xfrm_state *pfkey_xfrm_state_lookup(struct net *net, struct sadb_msg *hdr, void **ext_hdrs)
{
 struct sadb_sa *sa;
 struct sadb_address *addr;
 uint16_t proto;
 unsigned short family;
 xfrm_address_t *xaddr;

 sa = (struct sadb_sa *) ext_hdrs[SADB_EXT_SA-1];
 if (sa == ((void*)0))
  return ((void*)0);

 proto = pfkey_satype2proto(hdr->sadb_msg_satype);
 if (proto == 0)
  return ((void*)0);


 addr = (struct sadb_address *) ext_hdrs[SADB_EXT_ADDRESS_DST-1];
 if (addr == ((void*)0))
  return ((void*)0);

 family = ((struct sockaddr *)(addr + 1))->sa_family;
 switch (family) {
 case 129:
  xaddr = (xfrm_address_t *)&((struct sockaddr_in *)(addr + 1))->sin_addr;
  break;





 default:
  xaddr = ((void*)0);
 }

 if (!xaddr)
  return ((void*)0);

 return xfrm_state_lookup_with_mark(net, DUMMY_MARK, xaddr, sa->sadb_sa_spi, proto, family);
}
