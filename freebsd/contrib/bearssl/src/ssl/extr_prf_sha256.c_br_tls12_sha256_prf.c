
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_tls_prf_seed_chunk ;


 int br_sha256_vtable ;
 int br_tls_phash (void*,size_t,int *,void const*,size_t,char const*,size_t,int const*) ;
 int memset (void*,int ,size_t) ;

void
br_tls12_sha256_prf(void *dst, size_t len,
 const void *secret, size_t secret_len, const char *label,
 size_t seed_num, const br_tls_prf_seed_chunk *seed)
{
 memset(dst, 0, len);
 br_tls_phash(dst, len, &br_sha256_vtable,
  secret, secret_len, label, seed_num, seed);
}
