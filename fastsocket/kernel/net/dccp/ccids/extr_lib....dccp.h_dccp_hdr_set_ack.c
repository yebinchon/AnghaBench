
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dccp_hdr_ack_bits {int dccph_ack_nr_low; int dccph_ack_nr_high; scalar_t__ dccph_reserved1; } ;


 int htonl (int const) ;
 int htons (int const) ;

__attribute__((used)) static inline void dccp_hdr_set_ack(struct dccp_hdr_ack_bits *dhack,
        const u64 gsr)
{
 dhack->dccph_reserved1 = 0;
 dhack->dccph_ack_nr_high = htons(gsr >> 32);
 dhack->dccph_ack_nr_low = htonl(gsr & 0xffffffff);
}
