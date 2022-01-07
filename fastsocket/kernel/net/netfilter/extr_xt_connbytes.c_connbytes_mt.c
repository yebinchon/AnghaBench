
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
struct xt_match_param {struct xt_connbytes_info* matchinfo; } ;
struct TYPE_2__ {scalar_t__ to; scalar_t__ from; } ;
struct xt_connbytes_info {int what; TYPE_1__ count; int direction; } ;
struct sk_buff {int dummy; } ;
struct nf_conn_counter {scalar_t__ packets; scalar_t__ bytes; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;






 scalar_t__ div64_u64 (scalar_t__,scalar_t__) ;
 struct nf_conn_counter* nf_conn_acct_find (struct nf_conn const*) ;
 struct nf_conn* nf_ct_get (struct sk_buff const*,int*) ;

__attribute__((used)) static bool
connbytes_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_connbytes_info *sinfo = par->matchinfo;
 const struct nf_conn *ct;
 enum ip_conntrack_info ctinfo;
 u_int64_t what = 0;
 u_int64_t bytes = 0;
 u_int64_t pkts = 0;
 const struct nf_conn_counter *counters;

 ct = nf_ct_get(skb, &ctinfo);
 if (!ct)
  return 0;

 counters = nf_conn_acct_find(ct);
 if (!counters)
  return 0;

 switch (sinfo->what) {
 case 128:
  switch (sinfo->direction) {
  case 130:
   what = counters[IP_CT_DIR_ORIGINAL].packets;
   break;
  case 129:
   what = counters[IP_CT_DIR_REPLY].packets;
   break;
  case 131:
   what = counters[IP_CT_DIR_ORIGINAL].packets;
   what += counters[IP_CT_DIR_REPLY].packets;
   break;
  }
  break;
 case 132:
  switch (sinfo->direction) {
  case 130:
   what = counters[IP_CT_DIR_ORIGINAL].bytes;
   break;
  case 129:
   what = counters[IP_CT_DIR_REPLY].bytes;
   break;
  case 131:
   what = counters[IP_CT_DIR_ORIGINAL].bytes;
   what += counters[IP_CT_DIR_REPLY].bytes;
   break;
  }
  break;
 case 133:
  switch (sinfo->direction) {
  case 130:
   bytes = counters[IP_CT_DIR_ORIGINAL].bytes;
   pkts = counters[IP_CT_DIR_ORIGINAL].packets;
   break;
  case 129:
   bytes = counters[IP_CT_DIR_REPLY].bytes;
   pkts = counters[IP_CT_DIR_REPLY].packets;
   break;
  case 131:
   bytes = counters[IP_CT_DIR_ORIGINAL].bytes +
    counters[IP_CT_DIR_REPLY].bytes;
   pkts = counters[IP_CT_DIR_ORIGINAL].packets +
    counters[IP_CT_DIR_REPLY].packets;
   break;
  }
  if (pkts != 0)
   what = div64_u64(bytes, pkts);
  break;
 }

 if (sinfo->count.to)
  return what <= sinfo->count.to && what >= sinfo->count.from;
 else
  return what >= sinfo->count.from;
}
