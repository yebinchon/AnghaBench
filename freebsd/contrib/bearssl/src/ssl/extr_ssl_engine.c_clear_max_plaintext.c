
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sslrec_out_clear_context ;



__attribute__((used)) static void
clear_max_plaintext(const br_sslrec_out_clear_context *cc,
 size_t *start, size_t *end)
{
 size_t len;

 (void)cc;
 len = *end - *start;
 if (len > 16384) {
  *end = *start + 16384;
 }
}
