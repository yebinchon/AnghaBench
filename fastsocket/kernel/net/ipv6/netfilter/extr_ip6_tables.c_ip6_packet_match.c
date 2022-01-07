
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ipv6hdr {int daddr; int saddr; } ;
struct ip6t_ip6 {int invflags; int flags; int proto; int outiface; int outiface_mask; int iniface; int iniface_mask; int dst; int dmsk; int src; int smsk; } ;


 scalar_t__ FWINV (int,int) ;
 int IP6T_F_PROTO ;
 int IP6T_INV_DSTIP ;
 int IP6T_INV_PROTO ;
 int IP6T_INV_SRCIP ;
 int IP6T_INV_VIA_IN ;
 int IP6T_INV_VIA_OUT ;
 int dprintf (char*,...) ;
 unsigned long ifname_compare_aligned (char const*,int ,int ) ;
 int ipv6_find_hdr (struct sk_buff const*,unsigned int*,int,unsigned short*,int *) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff const*) ;
 int ipv6_masked_addr_cmp (int *,int *,int *) ;

__attribute__((used)) static inline bool
ip6_packet_match(const struct sk_buff *skb,
   const char *indev,
   const char *outdev,
   const struct ip6t_ip6 *ip6info,
   unsigned int *protoff,
   int *fragoff, bool *hotdrop)
{
 unsigned long ret;
 const struct ipv6hdr *ipv6 = ipv6_hdr(skb);



 if (((ipv6_masked_addr_cmp(&ipv6->saddr, &ip6info->smsk, &ip6info->src)) ^ !!(ip6info->invflags & (IP6T_INV_SRCIP)))

     || ((ipv6_masked_addr_cmp(&ipv6->daddr, &ip6info->dmsk, &ip6info->dst)) ^ !!(ip6info->invflags & (IP6T_INV_DSTIP)))) {

  dprintf("Source or dest mismatch.\n");







  return 0;
 }

 ret = ifname_compare_aligned(indev, ip6info->iniface, ip6info->iniface_mask);

 if (((ret != 0) ^ !!(ip6info->invflags & (IP6T_INV_VIA_IN)))) {
  dprintf("VIA in mismatch (%s vs %s).%s\n",
   indev, ip6info->iniface,
   ip6info->invflags&IP6T_INV_VIA_IN ?" (INV)":"");
  return 0;
 }

 ret = ifname_compare_aligned(outdev, ip6info->outiface, ip6info->outiface_mask);

 if (((ret != 0) ^ !!(ip6info->invflags & (IP6T_INV_VIA_OUT)))) {
  dprintf("VIA out mismatch (%s vs %s).%s\n",
   outdev, ip6info->outiface,
   ip6info->invflags&IP6T_INV_VIA_OUT ?" (INV)":"");
  return 0;
 }




 if((ip6info->flags & IP6T_F_PROTO)) {
  int protohdr;
  unsigned short _frag_off;

  protohdr = ipv6_find_hdr(skb, protoff, -1, &_frag_off, ((void*)0));
  if (protohdr < 0) {
   if (_frag_off == 0)
    *hotdrop = 1;
   return 0;
  }
  *fragoff = _frag_off;

  dprintf("Packet protocol %hi ?= %s%hi.\n",
    protohdr,
    ip6info->invflags & IP6T_INV_PROTO ? "!":"",
    ip6info->proto);

  if (ip6info->proto == protohdr) {
   if(ip6info->invflags & IP6T_INV_PROTO) {
    return 0;
   }
   return 1;
  }


  if ((ip6info->proto != 0) &&
   !(ip6info->invflags & IP6T_INV_PROTO))
   return 0;
 }
 return 1;
}
