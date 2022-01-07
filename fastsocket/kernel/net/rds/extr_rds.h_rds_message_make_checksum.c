
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_header {scalar_t__ h_csum; } ;


 scalar_t__ ip_fast_csum (void*,int) ;

__attribute__((used)) static inline void rds_message_make_checksum(struct rds_header *hdr)
{
 hdr->h_csum = 0;
 hdr->h_csum = ip_fast_csum((void *) hdr, sizeof(*hdr) >> 2);
}
