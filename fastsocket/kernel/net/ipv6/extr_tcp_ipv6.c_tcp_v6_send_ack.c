
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_md5sig_key {int dummy; } ;
struct sk_buff {int dummy; } ;


 int tcp_v6_send_response (struct sk_buff*,int ,int ,int ,int ,struct tcp_md5sig_key*,int ) ;

__attribute__((used)) static void tcp_v6_send_ack(struct sk_buff *skb, u32 seq, u32 ack, u32 win, u32 ts,
       struct tcp_md5sig_key *key)
{
 tcp_v6_send_response(skb, seq, ack, win, ts, key, 0);
}
