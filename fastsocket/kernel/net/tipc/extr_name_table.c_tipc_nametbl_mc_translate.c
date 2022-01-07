
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sub_seq {scalar_t__ lower; scalar_t__ cluster_list_size; scalar_t__ node_list_size; struct publication* node_list; } ;
struct publication {scalar_t__ scope; struct publication* node_list_next; int ref; } ;
struct port_list {int dummy; } ;
struct name_seq {int first_free; int lock; struct sub_seq* sseqs; } ;


 int nameseq_locate_subseq (struct name_seq*,scalar_t__) ;
 struct name_seq* nametbl_find_seq (scalar_t__) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_nametbl_lock ;
 int tipc_port_list_add (struct port_list*,int ) ;

int tipc_nametbl_mc_translate(u32 type, u32 lower, u32 upper, u32 limit,
         struct port_list *dports)
{
 struct name_seq *seq;
 struct sub_seq *sseq;
 struct sub_seq *sseq_stop;
 int res = 0;

 read_lock_bh(&tipc_nametbl_lock);
 seq = nametbl_find_seq(type);
 if (!seq)
  goto exit;

 spin_lock_bh(&seq->lock);

 sseq = seq->sseqs + nameseq_locate_subseq(seq, lower);
 sseq_stop = seq->sseqs + seq->first_free;
 for (; sseq != sseq_stop; sseq++) {
  struct publication *publ;

  if (sseq->lower > upper)
   break;

  publ = sseq->node_list;
  if (publ) {
   do {
    if (publ->scope <= limit)
     tipc_port_list_add(dports, publ->ref);
    publ = publ->node_list_next;
   } while (publ != sseq->node_list);
  }

  if (sseq->cluster_list_size != sseq->node_list_size)
   res = 1;
 }

 spin_unlock_bh(&seq->lock);
exit:
 read_unlock_bh(&tipc_nametbl_lock);
 return res;
}
