
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_result {int classid; scalar_t__ class; } ;
struct tcf_proto {TYPE_1__* q; scalar_t__ root; } ;
struct sk_buff {int mark; } ;
struct fw_head {int mask; struct fw_filter** ht; } ;
struct fw_filter {int id; int exts; int indev; struct tcf_result res; struct fw_filter* next; } ;
struct TYPE_2__ {int handle; } ;


 scalar_t__ TC_H_MAJ (int) ;
 size_t fw_hash (int) ;
 int tcf_exts_exec (struct sk_buff*,int *,struct tcf_result*) ;
 int tcf_match_indev (struct sk_buff*,int ) ;

__attribute__((used)) static int fw_classify(struct sk_buff *skb, struct tcf_proto *tp,
     struct tcf_result *res)
{
 struct fw_head *head = (struct fw_head*)tp->root;
 struct fw_filter *f;
 int r;
 u32 id = skb->mark;

 if (head != ((void*)0)) {
  id &= head->mask;
  for (f=head->ht[fw_hash(id)]; f; f=f->next) {
   if (f->id == id) {
    *res = f->res;




    r = tcf_exts_exec(skb, &f->exts, res);
    if (r < 0)
     continue;

    return r;
   }
  }
 } else {

  if (id && (TC_H_MAJ(id) == 0 || !(TC_H_MAJ(id^tp->q->handle)))) {
   res->classid = id;
   res->class = 0;
   return 0;
  }
 }

 return -1;
}
