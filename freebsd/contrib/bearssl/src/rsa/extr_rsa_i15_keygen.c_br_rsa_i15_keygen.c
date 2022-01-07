
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {scalar_t__* n; unsigned int nlen; scalar_t__* e; int elen; } ;
typedef TYPE_1__ br_rsa_public_key ;
struct TYPE_6__ {unsigned int n_bitlen; int* p; int plen; int* q; int qlen; int* dp; size_t dplen; int* dq; size_t dqlen; int* iq; size_t iqlen; } ;
typedef TYPE_2__ br_rsa_private_key ;
typedef int br_prng_class ;


 unsigned int BR_MAX_RSA_SIZE ;
 unsigned int BR_MIN_RSA_SIZE ;
 int MUL15 (int,int) ;
 int TEMPS ;
 int br_enc32be (scalar_t__*,int) ;
 int br_i15_add (int*,int*,int) ;
 int br_i15_encode (int*,size_t,int*) ;
 int br_i15_moddiv (int*,int*,int*,int ,int*) ;
 int br_i15_mulacc (int*,int*,int*) ;
 int br_i15_ninv15 (int) ;
 int br_i15_rshift (int*,int) ;
 int br_i15_sub (int*,int*,int ) ;
 int br_i15_zero (int*,int) ;
 int bufswap (int*,int*,int) ;
 scalar_t__ invert_pubexp (int*,int*,int,int*) ;
 int mkprime (int const**,int*,int,int,int*,size_t) ;

uint32_t
br_rsa_i15_keygen(const br_prng_class **rng,
 br_rsa_private_key *sk, void *kbuf_priv,
 br_rsa_public_key *pk, void *kbuf_pub,
 unsigned size, uint32_t pubexp)
{
 uint32_t esize_p, esize_q;
 size_t plen, qlen, tlen;
 uint16_t *p, *q, *t;
 uint16_t tmp[TEMPS];
 uint32_t r;

 if (size < BR_MIN_RSA_SIZE || size > BR_MAX_RSA_SIZE) {
  return 0;
 }
 if (pubexp == 0) {
  pubexp = 3;
 } else if (pubexp == 1 || (pubexp & 1) == 0) {
  return 0;
 }

 esize_p = (size + 1) >> 1;
 esize_q = size - esize_p;
 sk->n_bitlen = size;
 sk->p = kbuf_priv;
 sk->plen = (esize_p + 7) >> 3;
 sk->q = sk->p + sk->plen;
 sk->qlen = (esize_q + 7) >> 3;
 sk->dp = sk->q + sk->qlen;
 sk->dplen = sk->plen;
 sk->dq = sk->dp + sk->dplen;
 sk->dqlen = sk->qlen;
 sk->iq = sk->dq + sk->dqlen;
 sk->iqlen = sk->plen;

 if (pk != ((void*)0)) {
  pk->n = kbuf_pub;
  pk->nlen = (size + 7) >> 3;
  pk->e = pk->n + pk->nlen;
  pk->elen = 4;
  br_enc32be(pk->e, pubexp);
  while (*pk->e == 0) {
   pk->e ++;
   pk->elen --;
  }
 }







 esize_p += MUL15(esize_p, 17477) >> 18;
 esize_q += MUL15(esize_q, 17477) >> 18;
 plen = (esize_p + 15) >> 4;
 qlen = (esize_q + 15) >> 4;
 p = tmp;
 q = p + 1 + plen;
 t = q + 1 + qlen;
 tlen = ((sizeof tmp) / sizeof(uint16_t)) - (2 + plen + qlen);







 for (;;) {
  mkprime(rng, p, esize_p, pubexp, t, tlen);
  br_i15_rshift(p, 1);
  if (invert_pubexp(t, p, pubexp, t + 1 + plen)) {
   br_i15_add(p, p, 1);
   p[1] |= 1;
   br_i15_encode(sk->p, sk->plen, p);
   br_i15_encode(sk->dp, sk->dplen, t);
   break;
  }
 }

 for (;;) {
  mkprime(rng, q, esize_q, pubexp, t, tlen);
  br_i15_rshift(q, 1);
  if (invert_pubexp(t, q, pubexp, t + 1 + qlen)) {
   br_i15_add(q, q, 1);
   q[1] |= 1;
   br_i15_encode(sk->q, sk->qlen, q);
   br_i15_encode(sk->dq, sk->dqlen, t);
   break;
  }
 }
 if (esize_p == esize_q && br_i15_sub(p, q, 0) == 1) {
  bufswap(p, q, (1 + plen) * sizeof *p);
  bufswap(sk->p, sk->q, sk->plen);
  bufswap(sk->dp, sk->dq, sk->dplen);
 }
 q[0] = p[0];
 if (plen > qlen) {
  q[plen] = 0;
  t ++;
  tlen --;
 }
 br_i15_zero(t, p[0]);
 t[1] = 1;
 r = br_i15_moddiv(t, q, p, br_i15_ninv15(p[1]), t + 1 + plen);
 br_i15_encode(sk->iq, sk->iqlen, t);




 if (pk != ((void*)0)) {
  br_i15_zero(t, p[0]);
  br_i15_mulacc(t, p, q);
  br_i15_encode(pk->n, pk->nlen, t);
 }

 return r;
}
