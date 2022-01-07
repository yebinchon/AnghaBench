
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int buf_msg (struct sk_buff*) ;
 int msg_ack (int ) ;

__attribute__((used)) static u32 get_fragm_size(struct sk_buff *buf)
{
 return msg_ack(buf_msg(buf));
}
