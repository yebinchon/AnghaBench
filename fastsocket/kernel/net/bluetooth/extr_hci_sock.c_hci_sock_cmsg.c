
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tv ;
struct timeval {int tv_usec; int tv_sec; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_flags; } ;
struct compat_timeval {int tv_usec; int tv_sec; } ;
typedef int incoming ;
typedef int ctv ;
typedef int __u32 ;
struct TYPE_4__ {int incoming; } ;
struct TYPE_3__ {int cmsg_mask; } ;


 int HCI_CMSG_DIR ;
 int HCI_CMSG_TSTAMP ;
 int MSG_CMSG_COMPAT ;
 int SOL_HCI ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 TYPE_1__* hci_pi (struct sock*) ;
 int put_cmsg (struct msghdr*,int ,int,int,void*) ;
 int skb_get_timestamp (struct sk_buff*,struct timeval*) ;

__attribute__((used)) static inline void hci_sock_cmsg(struct sock *sk, struct msghdr *msg, struct sk_buff *skb)
{
 __u32 mask = hci_pi(sk)->cmsg_mask;

 if (mask & HCI_CMSG_DIR) {
  int incoming = bt_cb(skb)->incoming;
  put_cmsg(msg, SOL_HCI, HCI_CMSG_DIR, sizeof(incoming), &incoming);
 }

 if (mask & HCI_CMSG_TSTAMP) {
  struct timeval tv;
  void *data;
  int len;

  skb_get_timestamp(skb, &tv);

  data = &tv;
  len = sizeof(tv);
  put_cmsg(msg, SOL_HCI, HCI_CMSG_TSTAMP, len, data);
 }
}
