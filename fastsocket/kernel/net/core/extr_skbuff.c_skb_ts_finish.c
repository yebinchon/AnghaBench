
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts_state {int dummy; } ;
struct ts_config {int dummy; } ;


 int TS_SKB_CB (struct ts_state*) ;
 int skb_abort_seq_read (int ) ;

__attribute__((used)) static void skb_ts_finish(struct ts_config *conf, struct ts_state *state)
{
 skb_abort_seq_read(TS_SKB_CB(state));
}
