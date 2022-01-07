
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sfq_sched_data {int perturbation; } ;


 int SFQ_HASH_DIVISOR ;
 int jhash_2words (int ,int ,int ) ;

__attribute__((used)) static __inline__ unsigned sfq_fold_hash(struct sfq_sched_data *q, u32 h, u32 h1)
{
 return jhash_2words(h, h1, q->perturbation) & (SFQ_HASH_DIVISOR - 1);
}
