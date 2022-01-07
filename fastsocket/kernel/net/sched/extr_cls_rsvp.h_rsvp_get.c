
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_proto {scalar_t__ root; } ;
struct rsvp_session {struct rsvp_filter** ht; struct rsvp_session* next; } ;
struct rsvp_head {struct rsvp_session** ht; } ;
struct rsvp_filter {int handle; struct rsvp_filter* next; } ;



__attribute__((used)) static unsigned long rsvp_get(struct tcf_proto *tp, u32 handle)
{
 struct rsvp_session **sht = ((struct rsvp_head*)tp->root)->ht;
 struct rsvp_session *s;
 struct rsvp_filter *f;
 unsigned h1 = handle&0xFF;
 unsigned h2 = (handle>>8)&0xFF;

 if (h2 > 16)
  return 0;

 for (s = sht[h1]; s; s = s->next) {
  for (f = s->ht[h2]; f; f = f->next) {
   if (f->handle == handle)
    return (unsigned long)f;
  }
 }
 return 0;
}
