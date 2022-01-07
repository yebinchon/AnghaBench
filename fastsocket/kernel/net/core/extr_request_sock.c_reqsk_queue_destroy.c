
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_sock_queue {int dummy; } ;
struct request_sock {struct request_sock* dl_next; } ;
struct listen_sock {int nr_table_entries; scalar_t__ qlen; struct request_sock** syn_table; } ;


 size_t PAGE_SIZE ;
 int WARN_ON (int) ;
 int kfree (struct listen_sock*) ;
 int reqsk_free (struct request_sock*) ;
 struct listen_sock* reqsk_queue_yank_listen_sk (struct request_sock_queue*) ;
 int vfree (struct listen_sock*) ;

void reqsk_queue_destroy(struct request_sock_queue *queue)
{

 struct listen_sock *lopt = reqsk_queue_yank_listen_sk(queue);
 size_t lopt_size = sizeof(struct listen_sock) +
  lopt->nr_table_entries * sizeof(struct request_sock *);

 if (lopt->qlen != 0) {
  unsigned int i;

  for (i = 0; i < lopt->nr_table_entries; i++) {
   struct request_sock *req;

   while ((req = lopt->syn_table[i]) != ((void*)0)) {
    lopt->syn_table[i] = req->dl_next;
    lopt->qlen--;
    reqsk_free(req);
   }
  }
 }

 WARN_ON(lopt->qlen != 0);
 if (lopt_size > PAGE_SIZE)
  vfree(lopt);
 else
  kfree(lopt);
}
