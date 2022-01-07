
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rtable {int dummy; } ;
struct ipcm_cookie {int dummy; } ;
struct inet_cork {int dummy; } ;


 struct sk_buff* ERR_PTR (int) ;
 unsigned int MSG_PROBE ;
 int __ip_append_data (struct sock*,struct sk_buff_head*,struct inet_cork*,int (*) (void*,char*,int,int,int,struct sk_buff*),void*,int,int,struct ipcm_cookie*,unsigned int) ;
 int __ip_flush_pending_frames (struct sock*,struct sk_buff_head*,struct inet_cork*) ;
 struct sk_buff* __ip_make_skb (struct sock*,struct sk_buff_head*,struct inet_cork*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int ip_setup_cork (struct sock*,struct inet_cork*,struct ipcm_cookie*,struct rtable**) ;

struct sk_buff *ip_make_skb(struct sock *sk,
       int getfrag(void *from, char *to, int offset,
     int len, int odd, struct sk_buff *skb),
       void *from, int length, int transhdrlen,
       struct ipcm_cookie *ipc, struct rtable **rtp,
       unsigned int flags)
{
 struct inet_cork cork = {};
 struct sk_buff_head queue;
 int err;

 if (flags & MSG_PROBE)
  return ((void*)0);

 __skb_queue_head_init(&queue);

 err = ip_setup_cork(sk, &cork, ipc, rtp);
 if (err)
  return ERR_PTR(err);

 err = __ip_append_data(sk, &queue, &cork, getfrag,
          from, length, transhdrlen, ipc, flags);
 if (err) {
  __ip_flush_pending_frames(sk, &queue, &cork);
  return ERR_PTR(err);
 }

 return __ip_make_skb(sk, &queue, &cork);
}
