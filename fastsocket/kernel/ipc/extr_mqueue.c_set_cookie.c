
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;


 int NOTIFY_COOKIE_LEN ;

__attribute__((used)) static inline void set_cookie(struct sk_buff *skb, char code)
{
 ((char*)skb->data)[NOTIFY_COOKIE_LEN-1] = code;
}
