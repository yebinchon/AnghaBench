
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct request_sock {int dummy; } ;
struct listen_sock {int nr_table_entries; int hash_rnd; } ;
struct TYPE_3__ {struct listen_sock* listen_opt; } ;
struct inet_connection_sock {TYPE_1__ icsk_accept_queue; } ;
struct TYPE_4__ {int rmt_port; int rmt_addr; } ;


 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_reqsk_queue_added (struct sock*,unsigned long) ;
 TYPE_2__* inet_rsk (struct request_sock*) ;
 int inet_synq_hash (int ,int ,int ,int ) ;
 int reqsk_queue_hash_req (TYPE_1__*,int const,struct request_sock*,unsigned long) ;

void inet_csk_reqsk_queue_hash_add(struct sock *sk, struct request_sock *req,
       unsigned long timeout)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct listen_sock *lopt = icsk->icsk_accept_queue.listen_opt;
 const u32 h = inet_synq_hash(inet_rsk(req)->rmt_addr, inet_rsk(req)->rmt_port,
         lopt->hash_rnd, lopt->nr_table_entries);

 reqsk_queue_hash_req(&icsk->icsk_accept_queue, h, req, timeout);
 inet_csk_reqsk_queue_added(sk, timeout);
}
