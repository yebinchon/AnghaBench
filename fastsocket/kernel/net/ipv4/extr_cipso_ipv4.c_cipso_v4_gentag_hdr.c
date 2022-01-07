
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct cipso_v4_doi {int doi; } ;
typedef int __be32 ;


 unsigned char CIPSO_V4_HDR_LEN ;
 unsigned char IPOPT_CIPSO ;
 int htonl (int ) ;

__attribute__((used)) static void cipso_v4_gentag_hdr(const struct cipso_v4_doi *doi_def,
    unsigned char *buf,
    u32 len)
{
 buf[0] = IPOPT_CIPSO;
 buf[1] = CIPSO_V4_HDR_LEN + len;
 *(__be32 *)&buf[2] = htonl(doi_def->doi);
}
