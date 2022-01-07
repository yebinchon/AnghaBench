
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct subscription {int nameseq_list; TYPE_1__ seq; } ;
struct name_seq {scalar_t__ first_free; struct name_seq* sseqs; int ns_list; int subscriptions; int lock; } ;


 int hlist_del_init (int *) ;
 int kfree (struct name_seq*) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 struct name_seq* nametbl_find_seq (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_nametbl_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void tipc_nametbl_unsubscribe(struct subscription *s)
{
 struct name_seq *seq;

 write_lock_bh(&tipc_nametbl_lock);
 seq = nametbl_find_seq(s->seq.type);
 if (seq != ((void*)0)){
  spin_lock_bh(&seq->lock);
  list_del_init(&s->nameseq_list);
  spin_unlock_bh(&seq->lock);
  if ((seq->first_free == 0) && list_empty(&seq->subscriptions)) {
   hlist_del_init(&seq->ns_list);
   kfree(seq->sseqs);
   kfree(seq);
  }
 }
 write_unlock_bh(&tipc_nametbl_lock);
}
