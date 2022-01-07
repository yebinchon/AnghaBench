
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int buf_msg (struct sk_buff*) ;
 int msg_set_bcast_ack (int ,int ) ;

__attribute__((used)) static void set_expected_frags(struct sk_buff *buf, u32 exp)
{
 msg_set_bcast_ack(buf_msg(buf), exp);
}
