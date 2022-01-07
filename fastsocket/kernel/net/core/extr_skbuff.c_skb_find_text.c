
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts_state {int dummy; } ;
struct ts_config {int finish; int get_next_block; } ;
struct sk_buff {int dummy; } ;


 int TS_SKB_CB (struct ts_state*) ;
 unsigned int UINT_MAX ;
 int skb_prepare_seq_read (struct sk_buff*,unsigned int,unsigned int,int ) ;
 int skb_ts_finish ;
 int skb_ts_get_next_block ;
 unsigned int textsearch_find (struct ts_config*,struct ts_state*) ;

unsigned int skb_find_text(struct sk_buff *skb, unsigned int from,
      unsigned int to, struct ts_config *config,
      struct ts_state *state)
{
 unsigned int ret;

 config->get_next_block = skb_ts_get_next_block;
 config->finish = skb_ts_finish;

 skb_prepare_seq_read(skb, from, to, TS_SKB_CB(state));

 ret = textsearch_find(config, state);
 return (ret <= to - from ? ret : UINT_MAX);
}
