
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_sock_queue {int syn_wait_lock; struct listen_sock* listen_opt; } ;
struct listen_sock {int dummy; } ;


 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline struct listen_sock *reqsk_queue_yank_listen_sk(
  struct request_sock_queue *queue)
{
 struct listen_sock *lopt;

 write_lock_bh(&queue->syn_wait_lock);
 lopt = queue->listen_opt;
 queue->listen_opt = ((void*)0);
 write_unlock_bh(&queue->syn_wait_lock);

 return lopt;
}
