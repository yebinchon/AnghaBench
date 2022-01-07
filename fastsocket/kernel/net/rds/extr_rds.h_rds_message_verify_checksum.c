
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_header {int h_csum; } ;


 scalar_t__ ip_fast_csum (void*,int) ;

__attribute__((used)) static inline int rds_message_verify_checksum(const struct rds_header *hdr)
{
 return !hdr->h_csum || ip_fast_csum((void *) hdr, sizeof(*hdr) >> 2) == 0;
}
