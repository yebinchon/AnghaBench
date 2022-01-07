
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sslrec_chapol_context ;



__attribute__((used)) static int
chapol_check_length(const br_sslrec_chapol_context *cc, size_t rlen)
{



 (void)cc;
 return rlen >= 16 && rlen <= (16384 + 16);
}
