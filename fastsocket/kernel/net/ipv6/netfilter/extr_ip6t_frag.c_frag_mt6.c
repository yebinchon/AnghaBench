
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match_param {int* hotdrop; struct ip6t_frag* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ip6t_frag {int invflags; int flags; int * ids; } ;
struct frag_hdr {int frag_off; int reserved; int identification; } ;
typedef int _frag ;


 int ENOENT ;
 int IP6T_FRAG_FST ;
 int IP6T_FRAG_INV_IDS ;
 int IP6T_FRAG_MF ;
 int IP6T_FRAG_NMF ;
 int IP6T_FRAG_RES ;
 int IP6_MF ;
 int NEXTHDR_FRAGMENT ;
 int htons (int) ;
 int id_match (int ,int ,int ,int) ;
 int ipv6_find_hdr (struct sk_buff const*,unsigned int*,int ,int *,int *) ;
 int ntohl (int ) ;
 int ntohs (int) ;
 int pr_debug (char*,int,...) ;
 struct frag_hdr* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct frag_hdr*) ;

__attribute__((used)) static bool
frag_mt6(const struct sk_buff *skb, const struct xt_match_param *par)
{
 struct frag_hdr _frag;
 const struct frag_hdr *fh;
 const struct ip6t_frag *fraginfo = par->matchinfo;
 unsigned int ptr = 0;
 int err;

 err = ipv6_find_hdr(skb, &ptr, NEXTHDR_FRAGMENT, ((void*)0), ((void*)0));
 if (err < 0) {
  if (err != -ENOENT)
   *par->hotdrop = 1;
  return 0;
 }

 fh = skb_header_pointer(skb, ptr, sizeof(_frag), &_frag);
 if (fh == ((void*)0)) {
  *par->hotdrop = 1;
  return 0;
 }

 pr_debug("INFO %04X ", fh->frag_off);
 pr_debug("OFFSET %04X ", ntohs(fh->frag_off) & ~0x7);
 pr_debug("RES %02X %04X", fh->reserved, ntohs(fh->frag_off) & 0x6);
 pr_debug("MF %04X ", fh->frag_off & htons(IP6_MF));
 pr_debug("ID %u %08X\n", ntohl(fh->identification),
   ntohl(fh->identification));

 pr_debug("IPv6 FRAG id %02X ",
   id_match(fraginfo->ids[0], fraginfo->ids[1],
     ntohl(fh->identification),
     !!(fraginfo->invflags & IP6T_FRAG_INV_IDS)));
 pr_debug("res %02X %02X%04X %02X ",
   fraginfo->flags & IP6T_FRAG_RES, fh->reserved,
   ntohs(fh->frag_off) & 0x6,
   !((fraginfo->flags & IP6T_FRAG_RES)
     && (fh->reserved || (ntohs(fh->frag_off) & 0x06))));
 pr_debug("first %02X %02X %02X ",
   fraginfo->flags & IP6T_FRAG_FST,
   ntohs(fh->frag_off) & ~0x7,
   !((fraginfo->flags & IP6T_FRAG_FST)
     && (ntohs(fh->frag_off) & ~0x7)));
 pr_debug("mf %02X %02X %02X ",
   fraginfo->flags & IP6T_FRAG_MF,
   ntohs(fh->frag_off) & IP6_MF,
   !((fraginfo->flags & IP6T_FRAG_MF)
     && !((ntohs(fh->frag_off) & IP6_MF))));
 pr_debug("last %02X %02X %02X\n",
   fraginfo->flags & IP6T_FRAG_NMF,
   ntohs(fh->frag_off) & IP6_MF,
   !((fraginfo->flags & IP6T_FRAG_NMF)
     && (ntohs(fh->frag_off) & IP6_MF)));

 return (fh != ((void*)0))
        &&
        id_match(fraginfo->ids[0], fraginfo->ids[1],
   ntohl(fh->identification),
   !!(fraginfo->invflags & IP6T_FRAG_INV_IDS))
        &&
        !((fraginfo->flags & IP6T_FRAG_RES)
   && (fh->reserved || (ntohs(fh->frag_off) & 0x6)))
        &&
        !((fraginfo->flags & IP6T_FRAG_FST)
   && (ntohs(fh->frag_off) & ~0x7))
        &&
        !((fraginfo->flags & IP6T_FRAG_MF)
   && !(ntohs(fh->frag_off) & IP6_MF))
        &&
        !((fraginfo->flags & IP6T_FRAG_NMF)
   && (ntohs(fh->frag_off) & IP6_MF));
}
