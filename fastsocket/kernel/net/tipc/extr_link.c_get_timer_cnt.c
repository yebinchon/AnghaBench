
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int buf_msg (struct sk_buff*) ;
 int msg_reroute_cnt (int ) ;

__attribute__((used)) static u32 get_timer_cnt(struct sk_buff *buf)
{
 return msg_reroute_cnt(buf_msg(buf));
}
