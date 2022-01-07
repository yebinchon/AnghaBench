
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ima_template_entry {int digest; } ;
struct ima_queue_entry {int hnext; int later; struct ima_template_entry* entry; } ;
struct TYPE_2__ {int * queue; int len; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_long_inc (int *) ;
 int hlist_add_head_rcu (int *,int *) ;
 unsigned int ima_hash_key (int ) ;
 TYPE_1__ ima_htable ;
 int ima_measurements ;
 struct ima_queue_entry* kmalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int ima_add_digest_entry(struct ima_template_entry *entry)
{
 struct ima_queue_entry *qe;
 unsigned int key;

 qe = kmalloc(sizeof(*qe), GFP_KERNEL);
 if (qe == ((void*)0)) {
  pr_err("IMA: OUT OF MEMORY ERROR creating queue entry.\n");
  return -ENOMEM;
 }
 qe->entry = entry;

 INIT_LIST_HEAD(&qe->later);
 list_add_tail_rcu(&qe->later, &ima_measurements);

 atomic_long_inc(&ima_htable.len);
 key = ima_hash_key(entry->digest);
 hlist_add_head_rcu(&qe->hnext, &ima_htable.queue[key]);
 return 0;
}
