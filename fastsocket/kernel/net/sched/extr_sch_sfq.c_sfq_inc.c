
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sfq_sched_data {int max_depth; TYPE_1__* qs; TYPE_2__* dep; } ;
typedef size_t sfq_index ;
struct TYPE_4__ {size_t next; size_t prev; } ;
struct TYPE_3__ {int qlen; } ;


 int sfq_link (struct sfq_sched_data*,size_t) ;

__attribute__((used)) static inline void sfq_inc(struct sfq_sched_data *q, sfq_index x)
{
 sfq_index p, n;
 int d;

 n = q->dep[x].next;
 p = q->dep[x].prev;
 q->dep[p].next = n;
 q->dep[n].prev = p;
 d = q->qs[x].qlen;
 if (q->max_depth < d)
  q->max_depth = d;

 sfq_link(q, x);
}
