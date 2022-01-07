
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sslrec_gcm_context ;



__attribute__((used)) static int
gcm_check_length(const br_sslrec_gcm_context *cc, size_t rlen)
{





 (void)cc;
 return rlen >= 24 && rlen <= (16384 + 24);
}
