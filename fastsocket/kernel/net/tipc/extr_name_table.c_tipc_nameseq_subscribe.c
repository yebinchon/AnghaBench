
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subscription {int nameseq_list; } ;
struct sub_seq {int upper; int lower; struct publication* zone_list; } ;
struct publication {struct publication* zone_list_next; int node; int ref; } ;
struct name_seq {size_t first_free; struct sub_seq* sseqs; int subscriptions; } ;


 int TIPC_PUBLISHED ;
 int list_add (int *,int *) ;
 scalar_t__ tipc_subscr_overlap (struct subscription*,int ,int ) ;
 int tipc_subscr_report_overlap (struct subscription*,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static void tipc_nameseq_subscribe(struct name_seq *nseq, struct subscription *s)
{
 struct sub_seq *sseq = nseq->sseqs;

 list_add(&s->nameseq_list, &nseq->subscriptions);

 if (!sseq)
  return;

 while (sseq != &nseq->sseqs[nseq->first_free]) {
  struct publication *zl = sseq->zone_list;
  if (zl && tipc_subscr_overlap(s,sseq->lower,sseq->upper)) {
   struct publication *crs = zl;
   int must_report = 1;

   do {
    tipc_subscr_report_overlap(s,
          sseq->lower,
          sseq->upper,
          TIPC_PUBLISHED,
          crs->ref,
          crs->node,
          must_report);
    must_report = 0;
    crs = crs->zone_list_next;
   } while (crs != zl);
  }
  sseq++;
 }
}
