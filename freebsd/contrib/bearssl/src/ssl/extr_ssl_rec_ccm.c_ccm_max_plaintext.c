
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t tag_len; } ;
typedef TYPE_1__ br_sslrec_ccm_context ;



__attribute__((used)) static void
ccm_max_plaintext(const br_sslrec_ccm_context *cc,
 size_t *start, size_t *end)
{
 size_t len;

 *start += 8;
 len = *end - *start - cc->tag_len;
 if (len > 16384) {
  len = 16384;
 }
 *end = *start + len;
}
