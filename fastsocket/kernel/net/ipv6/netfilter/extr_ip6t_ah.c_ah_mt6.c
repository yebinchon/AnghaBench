
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match_param {int* hotdrop; struct ip6t_ah* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ip_auth_hdr {int hdrlen; unsigned int reserved; int spi; } ;
struct ip6t_ah {int invflags; unsigned int hdrlen; unsigned int hdrres; int * spis; } ;
typedef int _ah ;


 int ENOENT ;
 int IP6T_AH_INV_LEN ;
 int IP6T_AH_INV_SPI ;
 int NEXTHDR_AUTH ;
 int ipv6_find_hdr (struct sk_buff const*,unsigned int*,int ,int *,int *) ;
 int ntohl (int ) ;
 int pr_debug (char*,unsigned int,...) ;
 struct ip_auth_hdr* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct ip_auth_hdr*) ;
 int spi_match (int ,int ,int ,int) ;

__attribute__((used)) static bool ah_mt6(const struct sk_buff *skb, const struct xt_match_param *par)
{
 struct ip_auth_hdr _ah;
 const struct ip_auth_hdr *ah;
 const struct ip6t_ah *ahinfo = par->matchinfo;
 unsigned int ptr = 0;
 unsigned int hdrlen = 0;
 int err;

 err = ipv6_find_hdr(skb, &ptr, NEXTHDR_AUTH, ((void*)0), ((void*)0));
 if (err < 0) {
  if (err != -ENOENT)
   *par->hotdrop = 1;
  return 0;
 }

 ah = skb_header_pointer(skb, ptr, sizeof(_ah), &_ah);
 if (ah == ((void*)0)) {
  *par->hotdrop = 1;
  return 0;
 }

 hdrlen = (ah->hdrlen + 2) << 2;

 pr_debug("IPv6 AH LEN %u %u ", hdrlen, ah->hdrlen);
 pr_debug("RES %04X ", ah->reserved);
 pr_debug("SPI %u %08X\n", ntohl(ah->spi), ntohl(ah->spi));

 pr_debug("IPv6 AH spi %02X ",
   spi_match(ahinfo->spis[0], ahinfo->spis[1],
      ntohl(ah->spi),
      !!(ahinfo->invflags & IP6T_AH_INV_SPI)));
 pr_debug("len %02X %04X %02X ",
   ahinfo->hdrlen, hdrlen,
   (!ahinfo->hdrlen ||
    (ahinfo->hdrlen == hdrlen) ^
    !!(ahinfo->invflags & IP6T_AH_INV_LEN)));
 pr_debug("res %02X %04X %02X\n",
   ahinfo->hdrres, ah->reserved,
   !(ahinfo->hdrres && ah->reserved));

 return (ah != ((void*)0))
        &&
        spi_match(ahinfo->spis[0], ahinfo->spis[1],
    ntohl(ah->spi),
    !!(ahinfo->invflags & IP6T_AH_INV_SPI))
        &&
        (!ahinfo->hdrlen ||
  (ahinfo->hdrlen == hdrlen) ^
  !!(ahinfo->invflags & IP6T_AH_INV_LEN))
        &&
        !(ahinfo->hdrres && ah->reserved);
}
