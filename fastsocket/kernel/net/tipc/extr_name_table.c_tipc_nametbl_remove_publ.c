
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct publication {int dummy; } ;
struct name_seq {struct name_seq* sseqs; int ns_list; int subscriptions; int first_free; } ;


 int dbg (char*,int ,int ,int ) ;
 int hlist_del_init (int *) ;
 int kfree (struct name_seq*) ;
 scalar_t__ list_empty (int *) ;
 struct name_seq* nametbl_find_seq (int ) ;
 struct publication* tipc_nameseq_remove_publ (struct name_seq*,int ,int ,int ,int ) ;

struct publication *tipc_nametbl_remove_publ(u32 type, u32 lower,
          u32 node, u32 ref, u32 key)
{
 struct publication *publ;
 struct name_seq *seq = nametbl_find_seq(type);

 if (!seq)
  return ((void*)0);

 dbg("Withdrawing {%u,%u} from 0x%x\n", type, lower, node);
 publ = tipc_nameseq_remove_publ(seq, lower, node, ref, key);

 if (!seq->first_free && list_empty(&seq->subscriptions)) {
  hlist_del_init(&seq->ns_list);
  kfree(seq->sseqs);
  kfree(seq);
 }
 return publ;
}
