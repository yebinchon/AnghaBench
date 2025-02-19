
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct sk_buff {unsigned int len; } ;
struct TYPE_2__ {scalar_t__ sysctl_checksum; } ;
struct net {TYPE_1__ ct; } ;
struct dccp_hdr {int dccph_doff; int dccph_cscov; scalar_t__ dccph_type; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int _dh ;


 scalar_t__ DCCP_PKT_INVALID ;
 int IPPROTO_DCCP ;
 scalar_t__ LOG_INVALID (struct net*,int ) ;
 int NF_ACCEPT ;
 unsigned int NF_INET_PRE_ROUTING ;
 scalar_t__ nf_checksum_partial (struct sk_buff*,unsigned int,unsigned int,unsigned int,int ,int ) ;
 int nf_log_packet (int ,int ,struct sk_buff*,int *,int *,int *,char const*) ;
 struct dccp_hdr* skb_header_pointer (struct sk_buff*,unsigned int,int,struct dccp_hdr*) ;

__attribute__((used)) static int dccp_error(struct net *net, struct sk_buff *skb,
        unsigned int dataoff, enum ip_conntrack_info *ctinfo,
        u_int8_t pf, unsigned int hooknum)
{
 struct dccp_hdr _dh, *dh;
 unsigned int dccp_len = skb->len - dataoff;
 unsigned int cscov;
 const char *msg;

 dh = skb_header_pointer(skb, dataoff, sizeof(_dh), &_dh);
 if (dh == ((void*)0)) {
  msg = "nf_ct_dccp: short packet ";
  goto out_invalid;
 }

 if (dh->dccph_doff * 4 < sizeof(struct dccp_hdr) ||
     dh->dccph_doff * 4 > dccp_len) {
  msg = "nf_ct_dccp: truncated/malformed packet ";
  goto out_invalid;
 }

 cscov = dccp_len;
 if (dh->dccph_cscov) {
  cscov = (dh->dccph_cscov - 1) * 4;
  if (cscov > dccp_len) {
   msg = "nf_ct_dccp: bad checksum coverage ";
   goto out_invalid;
  }
 }

 if (net->ct.sysctl_checksum && hooknum == NF_INET_PRE_ROUTING &&
     nf_checksum_partial(skb, hooknum, dataoff, cscov, IPPROTO_DCCP,
    pf)) {
  msg = "nf_ct_dccp: bad checksum ";
  goto out_invalid;
 }

 if (dh->dccph_type >= DCCP_PKT_INVALID) {
  msg = "nf_ct_dccp: reserved packet type ";
  goto out_invalid;
 }

 return NF_ACCEPT;

out_invalid:
 if (LOG_INVALID(net, IPPROTO_DCCP))
  nf_log_packet(pf, 0, skb, ((void*)0), ((void*)0), ((void*)0), msg);
 return -NF_ACCEPT;
}
