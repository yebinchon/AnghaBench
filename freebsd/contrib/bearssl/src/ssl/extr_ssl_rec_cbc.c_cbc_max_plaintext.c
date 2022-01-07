
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
struct TYPE_7__ {size_t mac_len; scalar_t__ explicit_IV; TYPE_2__ bc; } ;
typedef TYPE_3__ br_sslrec_out_cbc_context ;
struct TYPE_5__ {size_t block_size; } ;



__attribute__((used)) static void
cbc_max_plaintext(const br_sslrec_out_cbc_context *cc,
 size_t *start, size_t *end)
{
 size_t blen, len;

 blen = cc->bc.vtable->block_size;
 if (cc->explicit_IV) {
  *start += blen;
 } else {
  *start += 4 + ((cc->mac_len + blen + 1) & ~(blen - 1));
 }
 len = (*end - *start) & ~(blen - 1);
 len -= 1 + cc->mac_len;
 if (len > 16384) {
  len = 16384;
 }
 *end = *start + len;
}
