
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t (* iecdsa ) (int ,int const*,unsigned char*,int ,unsigned char*) ;int sk; int iec; int mhash; } ;
typedef TYPE_1__ br_ssl_client_certificate_ec_context ;
typedef int br_ssl_client_certificate_class ;
typedef int br_hash_class ;


 int * br_multihash_getimpl (int ,int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 size_t stub1 (int ,int const*,unsigned char*,int ,unsigned char*) ;

__attribute__((used)) static size_t
cc_do_sign(const br_ssl_client_certificate_class **pctx,
 int hash_id, size_t hv_len, unsigned char *data, size_t len)
{
 br_ssl_client_certificate_ec_context *zc;
 unsigned char hv[64];
 const br_hash_class *hc;

 zc = (br_ssl_client_certificate_ec_context *)pctx;
 memcpy(hv, data, hv_len);
 hc = br_multihash_getimpl(zc->mhash, hash_id);
 if (hc == ((void*)0)) {
  return 0;
 }
 if (len < 139) {
  return 0;
 }
 return zc->iecdsa(zc->iec, hc, hv, zc->sk, data);
}
