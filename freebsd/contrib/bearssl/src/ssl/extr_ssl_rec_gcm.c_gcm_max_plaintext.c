
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sslrec_gcm_context ;



__attribute__((used)) static void
gcm_max_plaintext(const br_sslrec_gcm_context *cc,
 size_t *start, size_t *end)
{
 size_t len;

 (void)cc;
 *start += 8;
 len = *end - *start - 16;
 if (len > 16384) {
  len = 16384;
 }
 *end = *start + len;
}
