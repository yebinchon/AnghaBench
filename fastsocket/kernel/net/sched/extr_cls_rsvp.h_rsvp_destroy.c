
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int root; } ;
struct rsvp_session {struct rsvp_session* next; struct rsvp_session** ht; } ;
struct rsvp_head {struct rsvp_head* next; struct rsvp_head** ht; } ;
struct rsvp_filter {struct rsvp_filter* next; struct rsvp_filter** ht; } ;


 int kfree (struct rsvp_session*) ;
 int rsvp_delete_filter (struct tcf_proto*,struct rsvp_session*) ;
 struct rsvp_session* xchg (int *,int *) ;

__attribute__((used)) static void rsvp_destroy(struct tcf_proto *tp)
{
 struct rsvp_head *data = xchg(&tp->root, ((void*)0));
 struct rsvp_session **sht;
 int h1, h2;

 if (data == ((void*)0))
  return;

 sht = data->ht;

 for (h1=0; h1<256; h1++) {
  struct rsvp_session *s;

  while ((s = sht[h1]) != ((void*)0)) {
   sht[h1] = s->next;

   for (h2=0; h2<=16; h2++) {
    struct rsvp_filter *f;

    while ((f = s->ht[h2]) != ((void*)0)) {
     s->ht[h2] = f->next;
     rsvp_delete_filter(tp, f);
    }
   }
   kfree(s);
  }
 }
 kfree(data);
}
