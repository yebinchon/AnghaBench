
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_af_ops; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {struct sock* (* syn_recv_sock ) (struct sock*,struct sk_buff*,struct request_sock*,struct dst_entry*) ;} ;


 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_reqsk_queue_add (struct sock*,struct request_sock*,struct sock*) ;
 int reqsk_free (struct request_sock*) ;
 struct sock* stub1 (struct sock*,struct sk_buff*,struct request_sock*,struct dst_entry*) ;

__attribute__((used)) static inline struct sock *get_cookie_sock(struct sock *sk, struct sk_buff *skb,
        struct request_sock *req,
        struct dst_entry *dst)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct sock *child;

 child = icsk->icsk_af_ops->syn_recv_sock(sk, skb, req, dst);
 if (child)
  inet_csk_reqsk_queue_add(sk, req, child);
 else
  reqsk_free(req);

 return child;
}
