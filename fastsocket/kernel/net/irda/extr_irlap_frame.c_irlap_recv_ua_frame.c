
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct irlap_info {int dummy; } ;
struct irlap_cb {int dummy; } ;


 int RECV_UA_RSP ;
 int irlap_do_event (struct irlap_cb*,int ,struct sk_buff*,struct irlap_info*) ;

__attribute__((used)) static inline void irlap_recv_ua_frame(struct irlap_cb *self,
           struct sk_buff *skb,
           struct irlap_info *info)
{
 irlap_do_event(self, RECV_UA_RSP, skb, info);
}
