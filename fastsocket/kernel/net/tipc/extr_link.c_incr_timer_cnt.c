
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int buf_msg (struct sk_buff*) ;
 int msg_incr_reroute_cnt (int ) ;

__attribute__((used)) static void incr_timer_cnt(struct sk_buff *buf)
{
 msg_incr_reroute_cnt(buf_msg(buf));
}
