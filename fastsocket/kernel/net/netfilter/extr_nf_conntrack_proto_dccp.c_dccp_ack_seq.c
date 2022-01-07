
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dccp_hdr_ack_bits {int dccph_ack_nr_low; int dccph_ack_nr_high; } ;
struct dccp_hdr {int dummy; } ;


 int __dccp_basic_hdr_len (struct dccp_hdr const*) ;
 int ntohl (int ) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static u64 dccp_ack_seq(const struct dccp_hdr *dh)
{
 const struct dccp_hdr_ack_bits *dhack;

 dhack = (void *)dh + __dccp_basic_hdr_len(dh);
 return ((u64)ntohs(dhack->dccph_ack_nr_high) << 32) +
       ntohl(dhack->dccph_ack_nr_low);
}
