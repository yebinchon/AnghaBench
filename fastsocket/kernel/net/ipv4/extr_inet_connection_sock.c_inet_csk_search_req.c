
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct request_sock {int sk; TYPE_2__* rsk_ops; struct request_sock* dl_next; } ;
struct listen_sock {int nr_table_entries; int hash_rnd; struct request_sock** syn_table; } ;
struct inet_request_sock {scalar_t__ const rmt_port; scalar_t__ const rmt_addr; scalar_t__ const loc_addr; } ;
struct TYPE_3__ {struct listen_sock* listen_opt; } ;
struct inet_connection_sock {TYPE_1__ icsk_accept_queue; } ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;
struct TYPE_4__ {int family; } ;


 scalar_t__ AF_INET_FAMILY (int ) ;
 int WARN_ON (int ) ;
 struct inet_connection_sock* inet_csk (struct sock const*) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 size_t inet_synq_hash (scalar_t__ const,scalar_t__ const,int ,int ) ;

struct request_sock *inet_csk_search_req(const struct sock *sk,
      struct request_sock ***prevp,
      const __be16 rport, const __be32 raddr,
      const __be32 laddr)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);
 struct listen_sock *lopt = icsk->icsk_accept_queue.listen_opt;
 struct request_sock *req, **prev;

 for (prev = &lopt->syn_table[inet_synq_hash(raddr, rport, lopt->hash_rnd,
          lopt->nr_table_entries)];
      (req = *prev) != ((void*)0);
      prev = &req->dl_next) {
  const struct inet_request_sock *ireq = inet_rsk(req);

  if (ireq->rmt_port == rport &&
      ireq->rmt_addr == raddr &&
      ireq->loc_addr == laddr &&
      AF_INET_FAMILY(req->rsk_ops->family)) {
   WARN_ON(req->sk);
   *prevp = prev;
   break;
  }
 }

 return req;
}
