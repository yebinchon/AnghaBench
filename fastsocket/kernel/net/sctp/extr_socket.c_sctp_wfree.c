
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_wmem_queued; int sk_wmem_alloc; } ;
struct sk_buff {scalar_t__ truesize; scalar_t__ cb; } ;
struct sctp_chunk {struct sctp_association* asoc; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {int sndbuf_used; TYPE_1__ base; } ;


 scalar_t__ SCTP_DATA_SNDSIZE (struct sctp_chunk*) ;
 int __sctp_write_space (struct sctp_association*) ;
 int atomic_sub (int,int *) ;
 int sctp_association_put (struct sctp_association*) ;
 int sk_mem_uncharge (struct sock*,scalar_t__) ;
 int sock_wfree (struct sk_buff*) ;

__attribute__((used)) static void sctp_wfree(struct sk_buff *skb)
{
 struct sctp_association *asoc;
 struct sctp_chunk *chunk;
 struct sock *sk;


 chunk = *((struct sctp_chunk **)(skb->cb));
 asoc = chunk->asoc;
 sk = asoc->base.sk;
 asoc->sndbuf_used -= SCTP_DATA_SNDSIZE(chunk) +
    sizeof(struct sk_buff) +
    sizeof(struct sctp_chunk);

 atomic_sub(sizeof(struct sctp_chunk), &sk->sk_wmem_alloc);




 sk->sk_wmem_queued -= skb->truesize;
 sk_mem_uncharge(sk, skb->truesize);

 sock_wfree(skb);
 __sctp_write_space(asoc);

 sctp_association_put(asoc);
}
