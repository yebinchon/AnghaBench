
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int s_addr; } ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_5__ {int s_addr; } ;
struct ipt_ip {int invflags; int flags; int proto; int outiface; int outiface_mask; int iniface; int iniface_mask; TYPE_4__ dst; TYPE_3__ dmsk; TYPE_2__ src; TYPE_1__ smsk; } ;
struct iphdr {int saddr; int daddr; int protocol; } ;


 scalar_t__ FWINV (int,int) ;
 int IPT_F_FRAG ;
 int IPT_INV_DSTIP ;
 int IPT_INV_FRAG ;
 int IPT_INV_PROTO ;
 int IPT_INV_SRCIP ;
 int IPT_INV_VIA_IN ;
 int IPT_INV_VIA_OUT ;
 int dprintf (char*,...) ;
 unsigned long ifname_compare_aligned (char const*,int ,int ) ;

__attribute__((used)) static inline bool
ip_packet_match(const struct iphdr *ip,
  const char *indev,
  const char *outdev,
  const struct ipt_ip *ipinfo,
  int isfrag)
{
 unsigned long ret;



 if ((((ip->saddr&ipinfo->smsk.s_addr) != ipinfo->src.s_addr) ^ !!(ipinfo->invflags & (IPT_INV_SRCIP)))

     || (((ip->daddr&ipinfo->dmsk.s_addr) != ipinfo->dst.s_addr) ^ !!(ipinfo->invflags & (IPT_INV_DSTIP)))) {

  dprintf("Source or dest mismatch.\n");

  dprintf("SRC: %pI4. Mask: %pI4. Target: %pI4.%s\n",
   &ip->saddr, &ipinfo->smsk.s_addr, &ipinfo->src.s_addr,
   ipinfo->invflags & IPT_INV_SRCIP ? " (INV)" : "");
  dprintf("DST: %pI4 Mask: %pI4 Target: %pI4.%s\n",
   &ip->daddr, &ipinfo->dmsk.s_addr, &ipinfo->dst.s_addr,
   ipinfo->invflags & IPT_INV_DSTIP ? " (INV)" : "");
  return 0;
 }

 ret = ifname_compare_aligned(indev, ipinfo->iniface, ipinfo->iniface_mask);

 if (((ret != 0) ^ !!(ipinfo->invflags & (IPT_INV_VIA_IN)))) {
  dprintf("VIA in mismatch (%s vs %s).%s\n",
   indev, ipinfo->iniface,
   ipinfo->invflags&IPT_INV_VIA_IN ?" (INV)":"");
  return 0;
 }

 ret = ifname_compare_aligned(outdev, ipinfo->outiface, ipinfo->outiface_mask);

 if (((ret != 0) ^ !!(ipinfo->invflags & (IPT_INV_VIA_OUT)))) {
  dprintf("VIA out mismatch (%s vs %s).%s\n",
   outdev, ipinfo->outiface,
   ipinfo->invflags&IPT_INV_VIA_OUT ?" (INV)":"");
  return 0;
 }


 if (ipinfo->proto
     && ((ip->protocol != ipinfo->proto) ^ !!(ipinfo->invflags & (IPT_INV_PROTO)))) {
  dprintf("Packet protocol %hi does not match %hi.%s\n",
   ip->protocol, ipinfo->proto,
   ipinfo->invflags&IPT_INV_PROTO ? " (INV)":"");
  return 0;
 }



 if ((((ipinfo->flags&IPT_F_FRAG) && !isfrag) ^ !!(ipinfo->invflags & (IPT_INV_FRAG)))) {
  dprintf("Fragment rule but not fragment.%s\n",
   ipinfo->invflags & IPT_INV_FRAG ? " (INV)" : "");
  return 0;
 }

 return 1;
}
