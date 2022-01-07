
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_sock_queue {int syn_wait_lock; struct listen_sock* listen_opt; int * rskq_accept_head; } ;
struct request_sock {int dummy; } ;
struct listen_sock {int max_qlen_log; unsigned int nr_table_entries; int hash_rnd; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 size_t PAGE_SIZE ;
 int __GFP_HIGHMEM ;
 int __GFP_ZERO ;
 struct listen_sock* __vmalloc (size_t,int,int ) ;
 int get_random_bytes (int *,int) ;
 struct listen_sock* kzalloc (size_t,int) ;
 unsigned int max_t (int ,unsigned int,int) ;
 unsigned int min_t (int ,unsigned int,int ) ;
 unsigned int roundup_pow_of_two (unsigned int) ;
 int rwlock_init (int *) ;
 int sysctl_max_syn_backlog ;
 int u32 ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int reqsk_queue_alloc(struct request_sock_queue *queue,
        unsigned int nr_table_entries)
{
 size_t lopt_size = sizeof(struct listen_sock);
 struct listen_sock *lopt;

 nr_table_entries = min_t(u32, nr_table_entries, sysctl_max_syn_backlog);
 nr_table_entries = max_t(u32, nr_table_entries, 8);
 nr_table_entries = roundup_pow_of_two(nr_table_entries + 1);
 lopt_size += nr_table_entries * sizeof(struct request_sock *);
 if (lopt_size > PAGE_SIZE)
  lopt = __vmalloc(lopt_size,
   GFP_KERNEL | __GFP_HIGHMEM | __GFP_ZERO,
   PAGE_KERNEL);
 else
  lopt = kzalloc(lopt_size, GFP_KERNEL);
 if (lopt == ((void*)0))
  return -ENOMEM;

 for (lopt->max_qlen_log = 3;
      (1 << lopt->max_qlen_log) < nr_table_entries;
      lopt->max_qlen_log++);

 get_random_bytes(&lopt->hash_rnd, sizeof(lopt->hash_rnd));
 rwlock_init(&queue->syn_wait_lock);
 queue->rskq_accept_head = ((void*)0);
 lopt->nr_table_entries = nr_table_entries;

 write_lock_bh(&queue->syn_wait_lock);
 queue->listen_opt = lopt;
 write_unlock_bh(&queue->syn_wait_lock);

 return 0;
}
