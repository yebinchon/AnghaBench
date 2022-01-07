
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct ieee80211_txq_params {scalar_t__ ac; void* aifs; void* cwmax; void* cwmin; void* txop; } ;


 int EINVAL ;
 scalar_t__ NL80211_NUM_ACS ;
 size_t NL80211_TXQ_ATTR_AC ;
 size_t NL80211_TXQ_ATTR_AIFS ;
 size_t NL80211_TXQ_ATTR_CWMAX ;
 size_t NL80211_TXQ_ATTR_CWMIN ;
 size_t NL80211_TXQ_ATTR_TXOP ;
 void* nla_get_u16 (struct nlattr*) ;
 void* nla_get_u8 (struct nlattr*) ;

__attribute__((used)) static int parse_txq_params(struct nlattr *tb[],
       struct ieee80211_txq_params *txq_params)
{
 if (!tb[NL80211_TXQ_ATTR_AC] || !tb[NL80211_TXQ_ATTR_TXOP] ||
     !tb[NL80211_TXQ_ATTR_CWMIN] || !tb[NL80211_TXQ_ATTR_CWMAX] ||
     !tb[NL80211_TXQ_ATTR_AIFS])
  return -EINVAL;

 txq_params->ac = nla_get_u8(tb[NL80211_TXQ_ATTR_AC]);
 txq_params->txop = nla_get_u16(tb[NL80211_TXQ_ATTR_TXOP]);
 txq_params->cwmin = nla_get_u16(tb[NL80211_TXQ_ATTR_CWMIN]);
 txq_params->cwmax = nla_get_u16(tb[NL80211_TXQ_ATTR_CWMAX]);
 txq_params->aifs = nla_get_u8(tb[NL80211_TXQ_ATTR_AIFS]);

 if (txq_params->ac >= NL80211_NUM_ACS)
  return -EINVAL;

 return 0;
}
