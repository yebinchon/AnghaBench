
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct tcp_sack_block {void* end_seq; void* start_seq; } ;


 scalar_t__ after (void*,void*) ;
 scalar_t__ before (void*,void*) ;

__attribute__((used)) static inline int tcp_sack_extend(struct tcp_sack_block *sp, u32 seq,
      u32 end_seq)
{
 if (!after(seq, sp->end_seq) && !after(sp->start_seq, end_seq)) {
  if (before(seq, sp->start_seq))
   sp->start_seq = seq;
  if (after(end_seq, sp->end_seq))
   sp->end_seq = end_seq;
  return 1;
 }
 return 0;
}
