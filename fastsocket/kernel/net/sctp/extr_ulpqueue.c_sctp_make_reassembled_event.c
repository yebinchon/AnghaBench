
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sk_buff {struct sk_buff* next; scalar_t__ len; int data_len; int sk; } ;
struct sctp_ulpevent {int dummy; } ;
struct TYPE_2__ {struct sk_buff* frag_list; } ;


 int GFP_ATOMIC ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_REASMUSRMSGS ;
 int __skb_unlink (struct sk_buff*,struct sk_buff_head*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sctp_ulpevent* sctp_skb2event (struct sk_buff*) ;
 int sctp_skb_set_owner_r (struct sk_buff*,int ) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static struct sctp_ulpevent *sctp_make_reassembled_event(struct sk_buff_head *queue, struct sk_buff *f_frag, struct sk_buff *l_frag)
{
 struct sk_buff *pos;
 struct sk_buff *new = ((void*)0);
 struct sctp_ulpevent *event;
 struct sk_buff *pnext, *last;
 struct sk_buff *list = skb_shinfo(f_frag)->frag_list;


 if (f_frag == l_frag)
  pos = ((void*)0);
 else
  pos = f_frag->next;


 for (last = list; list; last = list, list = list->next);




 if (last)
  last->next = pos;
 else {
  if (skb_cloned(f_frag)) {





   new = skb_copy(f_frag, GFP_ATOMIC);
   if (!new)
    return ((void*)0);

   sctp_skb_set_owner_r(new, f_frag->sk);

   skb_shinfo(new)->frag_list = pos;
  } else
   skb_shinfo(f_frag)->frag_list = pos;
 }


 __skb_unlink(f_frag, queue);


 if (new) {
  kfree_skb(f_frag);
  f_frag = new;
 }

 while (pos) {

  pnext = pos->next;


  f_frag->len += pos->len;
  f_frag->data_len += pos->len;


  __skb_unlink(pos, queue);


  if (pos == l_frag)
   break;
  pos->next = pnext;
  pos = pnext;
 }

 event = sctp_skb2event(f_frag);
 SCTP_INC_STATS(SCTP_MIB_REASMUSRMSGS);

 return event;
}
