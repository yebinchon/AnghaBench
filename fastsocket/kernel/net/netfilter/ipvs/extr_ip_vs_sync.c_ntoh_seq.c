
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_seq {void* previous_delta; void* delta; void* init_seq; } ;


 void* get_unaligned_be32 (void**) ;

__attribute__((used)) static void ntoh_seq(struct ip_vs_seq *no, struct ip_vs_seq *ho)
{
 ho->init_seq = get_unaligned_be32(&no->init_seq);
 ho->delta = get_unaligned_be32(&no->delta);
 ho->previous_delta = get_unaligned_be32(&no->previous_delta);
}
