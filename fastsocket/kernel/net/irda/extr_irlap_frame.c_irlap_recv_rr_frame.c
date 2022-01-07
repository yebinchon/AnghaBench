
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; } ;
struct irlap_info {int nr; } ;
struct irlap_cb {int dummy; } ;


 int RECV_RR_CMD ;
 int RECV_RR_RSP ;
 int irlap_do_event (struct irlap_cb*,int ,struct sk_buff*,struct irlap_info*) ;

__attribute__((used)) static inline void irlap_recv_rr_frame(struct irlap_cb *self,
           struct sk_buff *skb,
           struct irlap_info *info, int command)
{
 info->nr = skb->data[1] >> 5;


 if (command)
  irlap_do_event(self, RECV_RR_CMD, skb, info);
 else
  irlap_do_event(self, RECV_RR_RSP, skb, info);
}
