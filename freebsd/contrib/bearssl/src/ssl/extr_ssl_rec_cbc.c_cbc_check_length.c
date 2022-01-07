
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
struct TYPE_7__ {size_t mac_len; scalar_t__ explicit_IV; TYPE_2__ bc; } ;
typedef TYPE_3__ br_sslrec_in_cbc_context ;
struct TYPE_5__ {size_t block_size; } ;



__attribute__((used)) static int
cbc_check_length(const br_sslrec_in_cbc_context *cc, size_t rlen)
{
 size_t blen;
 size_t min_len, max_len;

 blen = cc->bc.vtable->block_size;
 min_len = (blen + cc->mac_len) & ~(blen - 1);
 max_len = (16384 + 256 + cc->mac_len) & ~(blen - 1);
 if (cc->explicit_IV) {
  min_len += blen;
  max_len += blen;
 }
 return min_len <= rlen && rlen <= max_len;
}
