
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtattr {int rta_type; int rta_len; } ;


 scalar_t__ RTA_ALIGN (int) ;
 scalar_t__ RTA_DATA (struct rtattr*) ;
 int RTA_LENGTH (int) ;
 int memcpy (scalar_t__,void const*,int) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 scalar_t__ skb_put (struct sk_buff*,scalar_t__) ;

void __rta_fill(struct sk_buff *skb, int attrtype, int attrlen, const void *data)
{
 struct rtattr *rta;
 int size = RTA_LENGTH(attrlen);

 rta = (struct rtattr*)skb_put(skb, RTA_ALIGN(size));
 rta->rta_type = attrtype;
 rta->rta_len = size;
 memcpy(RTA_DATA(rta), data, attrlen);
 memset(RTA_DATA(rta) + attrlen, 0, RTA_ALIGN(size) - size);
}
