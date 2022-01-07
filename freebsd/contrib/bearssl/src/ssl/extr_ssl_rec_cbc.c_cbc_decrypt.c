
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_3__* vtable; } ;
struct TYPE_6__ {int mac_len; int mac; int seq; scalar_t__ explicit_IV; int iv; TYPE_1__ bc; } ;
typedef TYPE_2__ br_sslrec_in_cbc_context ;
typedef int br_hmac_context ;
struct TYPE_7__ {int block_size; int (* run ) (TYPE_3__**,int ,void*,int) ;} ;


 int EQ (int,int) ;
 int EQ0 (unsigned char) ;
 int GE (int,int) ;
 int LE (int,int) ;
 int LT (int,int) ;
 unsigned char MUX (int,int,int) ;
 int br_enc16be (unsigned char*,int) ;
 int br_enc64be (unsigned char*,int ) ;
 int br_hmac_init (int *,int *,int) ;
 int br_hmac_outCT (int *,unsigned char*,int,int,int,unsigned char*) ;
 int br_hmac_update (int *,unsigned char*,int) ;
 int cond_rotate (int,unsigned char*,int,int) ;
 int memset (unsigned char*,int ,int) ;
 int stub1 (TYPE_3__**,int ,void*,int) ;

__attribute__((used)) static unsigned char *
cbc_decrypt(br_sslrec_in_cbc_context *cc,
 int record_type, unsigned version, void *data, size_t *data_len)
{





 unsigned char *buf;
 uint32_t u, v, len, blen, min_len, max_len;
 uint32_t good, pad_len, rot_count, len_withmac, len_nomac;
 unsigned char tmp1[64], tmp2[64];
 int i;
 br_hmac_context hc;

 buf = data;
 len = *data_len;
 blen = cc->bc.vtable->block_size;
 cc->bc.vtable->run(&cc->bc.vtable, cc->iv, data, len);
 if (cc->explicit_IV) {
  buf += blen;
  len -= blen;
 }





 min_len = (cc->mac_len + 256 < len) ? len - 256 : cc->mac_len;
 max_len = len - 1;





 pad_len = buf[max_len];
 good = LE(pad_len, (uint32_t)(max_len - min_len));
 len = MUX(good, (uint32_t)(max_len - pad_len), min_len);





 for (u = min_len; u < max_len; u ++) {
  good &= LT(u, len) | EQ(buf[u], pad_len);
 }
 len_withmac = (uint32_t)len;
 len_nomac = len_withmac - cc->mac_len;
 min_len -= cc->mac_len;
 rot_count = 0;
 memset(tmp1, 0, cc->mac_len);
 v = 0;
 for (u = min_len; u < max_len; u ++) {
  tmp1[v] |= MUX(GE(u, len_nomac) & LT(u, len_withmac),
   buf[u], 0x00);
  rot_count = MUX(EQ(u, len_nomac), v, rot_count);
  if (++ v == cc->mac_len) {
   v = 0;
  }
 }
 max_len -= cc->mac_len;







 for (i = 5; i >= 0; i --) {
  uint32_t rc;

  rc = (uint32_t)1 << i;
  cond_rotate(rot_count >> i, tmp1, cc->mac_len, rc);
  rot_count &= ~rc;
 }
 br_enc64be(tmp2, cc->seq ++);
 tmp2[8] = (unsigned char)record_type;
 br_enc16be(tmp2 + 9, version);
 br_enc16be(tmp2 + 11, len_nomac);
 br_hmac_init(&hc, &cc->mac, cc->mac_len);
 br_hmac_update(&hc, tmp2, 13);
 br_hmac_outCT(&hc, buf, len_nomac, min_len, max_len, tmp2);




 for (u = 0; u < cc->mac_len; u ++) {
  good &= EQ0(tmp1[u] ^ tmp2[u]);
 }
 good &= LE(len_nomac, 16384);

 if (!good) {
  return 0;
 }
 *data_len = len_nomac;
 return buf;
}
