
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {scalar_t__ root; } ;
struct rsvp_session {struct rsvp_session* next; struct rsvp_filter** ht; } ;
struct rsvp_head {struct rsvp_session** ht; } ;
struct rsvp_filter {unsigned int handle; struct rsvp_filter* next; struct rsvp_session* sess; } ;


 int kfree (struct rsvp_session*) ;
 int rsvp_delete_filter (struct tcf_proto*,struct rsvp_filter*) ;
 int tcf_tree_lock (struct tcf_proto*) ;
 int tcf_tree_unlock (struct tcf_proto*) ;

__attribute__((used)) static int rsvp_delete(struct tcf_proto *tp, unsigned long arg)
{
 struct rsvp_filter **fp, *f = (struct rsvp_filter*)arg;
 unsigned h = f->handle;
 struct rsvp_session **sp;
 struct rsvp_session *s = f->sess;
 int i;

 for (fp = &s->ht[(h>>8)&0xFF]; *fp; fp = &(*fp)->next) {
  if (*fp == f) {
   tcf_tree_lock(tp);
   *fp = f->next;
   tcf_tree_unlock(tp);
   rsvp_delete_filter(tp, f);



   for (i=0; i<=16; i++)
    if (s->ht[i])
     return 0;


   for (sp = &((struct rsvp_head*)tp->root)->ht[h&0xFF];
        *sp; sp = &(*sp)->next) {
    if (*sp == s) {
     tcf_tree_lock(tp);
     *sp = s->next;
     tcf_tree_unlock(tp);

     kfree(s);
     return 0;
    }
   }

   return 0;
  }
 }
 return 0;
}
