
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* sk; scalar_t__ (* irsasign ) (unsigned char const*,unsigned char*,size_t,TYPE_2__*,unsigned char*) ;} ;
typedef TYPE_1__ br_ssl_client_certificate_rsa_context ;
typedef int br_ssl_client_certificate_class ;
struct TYPE_4__ {int n_bitlen; } ;


 unsigned char** HASH_OID ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 scalar_t__ stub1 (unsigned char const*,unsigned char*,size_t,TYPE_2__*,unsigned char*) ;

__attribute__((used)) static size_t
cc_do_sign(const br_ssl_client_certificate_class **pctx,
 int hash_id, size_t hv_len, unsigned char *data, size_t len)
{
 br_ssl_client_certificate_rsa_context *zc;
 unsigned char hv[64];
 const unsigned char *hash_oid;
 size_t sig_len;

 zc = (br_ssl_client_certificate_rsa_context *)pctx;
 memcpy(hv, data, hv_len);
 if (hash_id == 0) {
  hash_oid = ((void*)0);
 } else if (hash_id >= 2 && hash_id <= 6) {
  hash_oid = HASH_OID[hash_id - 2];
 } else {
  return 0;
 }
 sig_len = (zc->sk->n_bitlen + 7) >> 3;
 if (len < sig_len) {
  return 0;
 }
 return zc->irsasign(hash_oid, hv, hv_len, zc->sk, data) ? sig_len : 0;
}
