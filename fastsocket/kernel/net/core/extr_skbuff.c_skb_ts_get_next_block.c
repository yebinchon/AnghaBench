
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ts_state {int dummy; } ;
struct ts_config {int dummy; } ;


 int TS_SKB_CB (struct ts_state*) ;
 unsigned int skb_seq_read (unsigned int,int const**,int ) ;

__attribute__((used)) static unsigned int skb_ts_get_next_block(unsigned int offset, const u8 **text,
       struct ts_config *conf,
       struct ts_state *state)
{
 return skb_seq_read(offset, text, TS_SKB_CB(state));
}
