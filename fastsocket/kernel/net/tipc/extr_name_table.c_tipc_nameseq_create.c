
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sub_seq {int alloc; int ns_list; int subscriptions; int first_free; struct sub_seq* sseqs; int type; int lock; } ;
struct name_seq {int alloc; int ns_list; int subscriptions; int first_free; struct name_seq* sseqs; int type; int lock; } ;
struct hlist_head {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int dbg (char*,struct sub_seq*,int ,struct sub_seq*,int ) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 int kfree (struct sub_seq*) ;
 struct sub_seq* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 struct sub_seq* tipc_subseq_alloc (int) ;
 int warn (char*) ;

__attribute__((used)) static struct name_seq *tipc_nameseq_create(u32 type, struct hlist_head *seq_head)
{
 struct name_seq *nseq = kzalloc(sizeof(*nseq), GFP_ATOMIC);
 struct sub_seq *sseq = tipc_subseq_alloc(1);

 if (!nseq || !sseq) {
  warn("Name sequence creation failed, no memory\n");
  kfree(nseq);
  kfree(sseq);
  return ((void*)0);
 }

 spin_lock_init(&nseq->lock);
 nseq->type = type;
 nseq->sseqs = sseq;
 dbg("tipc_nameseq_create(): nseq = %p, type %u, ssseqs %p, ff: %u\n",
     nseq, type, nseq->sseqs, nseq->first_free);
 nseq->alloc = 1;
 INIT_HLIST_NODE(&nseq->ns_list);
 INIT_LIST_HEAD(&nseq->subscriptions);
 hlist_add_head(&nseq->ns_list, seq_head);
 return nseq;
}
