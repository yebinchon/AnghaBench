
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {unsigned char* n; size_t nlen; int elen; int e; } ;
typedef TYPE_1__ br_rsa_public_key ;


 int BR_MAX_RSA_SIZE ;
 int br_i32_decode (int*,unsigned char const*,size_t) ;
 int br_i32_decode_mod (int*,unsigned char*,size_t,int*) ;
 int br_i32_encode (unsigned char*,size_t,int*) ;
 int br_i32_modpow (int*,int ,int ,int*,int,int*,int*) ;
 int br_i32_ninv32 (int) ;

uint32_t
br_rsa_i32_public(unsigned char *x, size_t xlen,
 const br_rsa_public_key *pk)
{
 const unsigned char *n;
 size_t nlen;
 uint32_t m[1 + (BR_MAX_RSA_SIZE >> 5)];
 uint32_t a[1 + (BR_MAX_RSA_SIZE >> 5)];
 uint32_t t1[1 + (BR_MAX_RSA_SIZE >> 5)];
 uint32_t t2[1 + (BR_MAX_RSA_SIZE >> 5)];
 uint32_t m0i, r;





 n = pk->n;
 nlen = pk->nlen;
 while (nlen > 0 && *n == 0) {
  n ++;
  nlen --;
 }
 if (nlen == 0 || nlen > (BR_MAX_RSA_SIZE >> 3) || xlen != nlen) {
  return 0;
 }
 br_i32_decode(m, n, nlen);
 m0i = br_i32_ninv32(m[1]);





 r = m0i & 1;




 r &= br_i32_decode_mod(a, x, xlen, m);




 br_i32_modpow(a, pk->e, pk->elen, m, m0i, t1, t2);




 br_i32_encode(x, xlen, a);
 return r;
}
