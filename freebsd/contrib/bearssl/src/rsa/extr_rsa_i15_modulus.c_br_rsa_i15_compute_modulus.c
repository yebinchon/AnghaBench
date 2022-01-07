
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {unsigned char* p; size_t plen; unsigned char* q; size_t qlen; int n_bitlen; } ;
typedef TYPE_1__ br_rsa_private_key ;


 int BR_MAX_RSA_SIZE ;
 int br_i15_decode (int*,unsigned char const*,size_t) ;
 int br_i15_encode (void*,size_t,int*) ;
 int br_i15_mulacc (int*,int*,int*) ;
 int br_i15_zero (int*,int) ;

size_t
br_rsa_i15_compute_modulus(void *n, const br_rsa_private_key *sk)
{
 uint16_t tmp[2 * ((BR_MAX_RSA_SIZE + 14) / 15) + 5];
 uint16_t *t, *p, *q;
 const unsigned char *pbuf, *qbuf;
 size_t nlen, plen, qlen, tlen;




 pbuf = sk->p;
 plen = sk->plen;
 while (plen > 0 && *pbuf == 0) {
  pbuf ++;
  plen --;
 }
 qbuf = sk->q;
 qlen = sk->qlen;
 while (qlen > 0 && *qbuf == 0) {
  qbuf ++;
  qlen --;
 }

 t = tmp;
 tlen = (sizeof tmp) / (sizeof tmp[0]);




 if ((15 * tlen) < (plen << 3) + 15) {
  return 0;
 }
 br_i15_decode(t, pbuf, plen);
 p = t;
 plen = (p[0] + 31) >> 4;
 t += plen;
 tlen -= plen;




 if ((15 * tlen) < (qlen << 3) + 15) {
  return 0;
 }
 br_i15_decode(t, qbuf, qlen);
 q = t;
 qlen = (q[0] + 31) >> 4;
 t += qlen;
 tlen -= qlen;





 if (tlen < (plen + qlen + 1)) {
  return 0;
 }






 nlen = (sk->n_bitlen + 7) >> 3;
 if (n != ((void*)0)) {
  br_i15_zero(t, p[0]);
  br_i15_mulacc(t, p, q);
  br_i15_encode(n, nlen, t);
 }
 return nlen;
}
