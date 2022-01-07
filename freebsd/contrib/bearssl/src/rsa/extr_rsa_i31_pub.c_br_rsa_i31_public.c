
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {unsigned char* n; size_t nlen; int elen; int e; } ;
typedef TYPE_1__ br_rsa_public_key ;


 int BR_MAX_RSA_SIZE ;
 int TLEN ;
 int br_i31_decode (int*,unsigned char const*,size_t) ;
 int br_i31_decode_mod (int*,unsigned char*,size_t,int*) ;
 int br_i31_encode (unsigned char*,size_t,int*) ;
 int br_i31_modpow_opt (int*,int ,int ,int*,int,int*,int) ;
 int br_i31_ninv31 (int) ;

uint32_t
br_rsa_i31_public(unsigned char *x, size_t xlen,
 const br_rsa_public_key *pk)
{
 const unsigned char *n;
 size_t nlen;
 uint32_t tmp[1 + TLEN];
 uint32_t *m, *a, *t;
 size_t fwlen;
 long z;
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
 z = (long)nlen << 3;
 fwlen = 1;
 while (z > 0) {
  z -= 31;
  fwlen ++;
 }



 fwlen += (fwlen & 1);






 m = tmp;
 a = m + fwlen;
 t = m + 2 * fwlen;




 br_i31_decode(m, n, nlen);
 m0i = br_i31_ninv31(m[1]);





 r = m0i & 1;




 r &= br_i31_decode_mod(a, x, xlen, m);




 br_i31_modpow_opt(a, pk->e, pk->elen, m, m0i, t, TLEN - 2 * fwlen);




 br_i31_encode(x, xlen, a);
 return r;
}
