
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_queue; } ;
struct rtable {int dummy; } ;
struct ipcm_cookie {int dummy; } ;
struct inet_sock {int cork; } ;
struct inet_cork {int dummy; } ;


 unsigned int MSG_PROBE ;
 int __ip_append_data (struct sock*,int *,struct inet_cork*,int (*) (void*,char*,int,int,int,struct sk_buff*),void*,int,int,struct ipcm_cookie*,unsigned int) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_setup_cork (struct sock*,struct inet_cork*,struct ipcm_cookie*,struct rtable**) ;
 scalar_t__ skb_queue_empty (int *) ;

int ip_append_data(struct sock *sk,
     int getfrag(void *from, char *to, int offset, int len,
          int odd, struct sk_buff *skb),
     void *from, int length, int transhdrlen,
     struct ipcm_cookie *ipc, struct rtable **rtp,
     unsigned int flags)
{
 struct inet_sock *inet = inet_sk(sk);
 int err;

 if (flags&MSG_PROBE)
  return 0;

 if (skb_queue_empty(&sk->sk_write_queue)) {
  err = ip_setup_cork(sk, (struct inet_cork *)&inet->cork, ipc,
        rtp);
  if (err)
   return err;
 } else {
  transhdrlen = 0;
 }

 return __ip_append_data(sk, &sk->sk_write_queue,
    (struct inet_cork *)&inet->cork, getfrag,
    from, length, transhdrlen, ipc, flags);
}
