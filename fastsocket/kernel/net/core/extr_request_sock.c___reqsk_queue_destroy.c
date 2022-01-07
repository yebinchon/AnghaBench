
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_sock_queue {struct listen_sock* listen_opt; } ;
struct request_sock {int dummy; } ;
struct listen_sock {int nr_table_entries; } ;


 size_t PAGE_SIZE ;
 int kfree (struct listen_sock*) ;
 int vfree (struct listen_sock*) ;

void __reqsk_queue_destroy(struct request_sock_queue *queue)
{
 struct listen_sock *lopt;
 size_t lopt_size;






 lopt = queue->listen_opt;
 lopt_size = sizeof(struct listen_sock) +
  lopt->nr_table_entries * sizeof(struct request_sock *);

 if (lopt_size > PAGE_SIZE)
  vfree(lopt);
 else
  kfree(lopt);
}
