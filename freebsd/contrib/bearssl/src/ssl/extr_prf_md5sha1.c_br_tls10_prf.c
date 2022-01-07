
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_tls_prf_seed_chunk ;


 int br_md5_vtable ;
 int br_sha1_vtable ;
 int br_tls_phash (void*,size_t,int *,unsigned char const*,size_t,char const*,size_t,int const*) ;
 int memset (void*,int ,size_t) ;

void
br_tls10_prf(void *dst, size_t len,
 const void *secret, size_t secret_len, const char *label,
 size_t seed_num, const br_tls_prf_seed_chunk *seed)
{
 const unsigned char *s1;
 size_t slen;

 s1 = secret;
 slen = (secret_len + 1) >> 1;
 memset(dst, 0, len);
 br_tls_phash(dst, len, &br_md5_vtable,
  s1, slen, label, seed_num, seed);
 br_tls_phash(dst, len, &br_sha1_vtable,
  s1 + secret_len - slen, slen, label, seed_num, seed);
}
