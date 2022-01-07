
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_seq {int previous_delta; int delta; int init_seq; } ;


 int put_unaligned_be32 (int ,int *) ;

__attribute__((used)) static void hton_seq(struct ip_vs_seq *ho, struct ip_vs_seq *no)
{
 put_unaligned_be32(ho->init_seq, &no->init_seq);
 put_unaligned_be32(ho->delta, &no->delta);
 put_unaligned_be32(ho->previous_delta, &no->previous_delta);
}
