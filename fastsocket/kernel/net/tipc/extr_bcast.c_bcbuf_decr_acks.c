
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 scalar_t__ bcbuf_acks (struct sk_buff*) ;
 int bcbuf_set_acks (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void bcbuf_decr_acks(struct sk_buff *buf)
{
 bcbuf_set_acks(buf, bcbuf_acks(buf) - 1);
}
