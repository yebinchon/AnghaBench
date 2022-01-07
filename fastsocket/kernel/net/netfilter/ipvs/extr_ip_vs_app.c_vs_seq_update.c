
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_seq {int previous_delta; int delta; int init_seq; } ;
struct ip_vs_conn {unsigned int flags; int lock; } ;
typedef int __u32 ;


 scalar_t__ after (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void vs_seq_update(struct ip_vs_conn *cp, struct ip_vs_seq *vseq,
     unsigned flag, __u32 seq, int diff)
{

 spin_lock(&cp->lock);
 if (!(cp->flags & flag) || after(seq, vseq->init_seq)) {
  vseq->previous_delta = vseq->delta;
  vseq->delta += diff;
  vseq->init_seq = seq;
  cp->flags |= flag;
 }
 spin_unlock(&cp->lock);
}
