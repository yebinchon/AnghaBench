
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int buf_msg (struct sk_buff*) ;
 int msg_set_ack (int ,int ) ;

__attribute__((used)) static void set_fragm_size(struct sk_buff *buf, u32 sz)
{
 msg_set_ack(buf_msg(buf), sz);
}
