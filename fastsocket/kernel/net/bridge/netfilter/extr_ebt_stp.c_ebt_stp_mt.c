
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct xt_match_param {struct ebt_stp_info* matchinfo; } ;
struct stp_header {scalar_t__ type; } ;
struct stp_config_pdu {scalar_t__ type; } ;
struct sk_buff {int dummy; } ;
struct ebt_stp_info {int bitmask; scalar_t__ type; } ;
typedef int header ;
typedef int _stph ;
typedef int _stpc ;


 scalar_t__ BPDU_TYPE_CONFIG ;
 int EBT_STP_CONFIG_MASK ;
 int EBT_STP_TYPE ;
 scalar_t__ FWINV (int,int) ;
 int ebt_filter_config (struct ebt_stp_info const*,struct stp_header const*) ;
 scalar_t__ memcmp (struct stp_header const*,int const*,int) ;
 struct stp_header* skb_header_pointer (struct sk_buff const*,int,int,struct stp_header*) ;

__attribute__((used)) static bool
ebt_stp_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct ebt_stp_info *info = par->matchinfo;
 const struct stp_header *sp;
 struct stp_header _stph;
 const uint8_t header[6] = {0x42, 0x42, 0x03, 0x00, 0x00, 0x00};

 sp = skb_header_pointer(skb, 0, sizeof(_stph), &_stph);
 if (sp == ((void*)0))
  return 0;


 if (memcmp(sp, header, sizeof(header)))
  return 0;

 if (info->bitmask & EBT_STP_TYPE
     && FWINV(info->type != sp->type, EBT_STP_TYPE))
  return 0;

 if (sp->type == BPDU_TYPE_CONFIG &&
     info->bitmask & EBT_STP_CONFIG_MASK) {
  const struct stp_config_pdu *st;
  struct stp_config_pdu _stpc;

  st = skb_header_pointer(skb, sizeof(_stph),
     sizeof(_stpc), &_stpc);
  if (st == ((void*)0))
   return 0;
  return ebt_filter_config(info, st);
 }
 return 1;
}
