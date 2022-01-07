
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sfq_sched_data {TYPE_1__* dep; TYPE_2__* qs; } ;
typedef size_t sfq_index ;
struct TYPE_4__ {int qlen; } ;
struct TYPE_3__ {size_t next; size_t prev; } ;


 int SFQ_DEPTH ;

__attribute__((used)) static inline void sfq_link(struct sfq_sched_data *q, sfq_index x)
{
 sfq_index p, n;
 int d = q->qs[x].qlen + SFQ_DEPTH;

 p = d;
 n = q->dep[d].next;
 q->dep[x].next = n;
 q->dep[x].prev = p;
 q->dep[p].next = q->dep[n].prev = x;
}
