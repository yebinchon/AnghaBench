
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_8__ {void const* n; size_t nlen; void const* e; size_t elen; } ;
typedef TYPE_1__ br_rsa_public_key ;
struct TYPE_9__ {void const* p; size_t plen; void const* q; size_t qlen; void const* dp; size_t dplen; void const* dq; size_t dqlen; void const* iq; size_t iqlen; } ;
typedef TYPE_2__ br_rsa_private_key ;
struct TYPE_10__ {size_t asn1len; } ;
typedef TYPE_3__ br_asn1_uint ;


 size_t br_asn1_encode_length (unsigned char*,size_t) ;
 int br_asn1_encode_uint (unsigned char*,TYPE_3__) ;
 TYPE_3__ br_asn1_uint_prepare (void const*,size_t) ;
 size_t len_of_len (size_t) ;

size_t
br_encode_rsa_raw_der(void *dest, const br_rsa_private_key *sk,
 const br_rsa_public_key *pk, const void *d, size_t dlen)
{
 br_asn1_uint num[9];
 size_t u, slen;





 num[0] = br_asn1_uint_prepare(((void*)0), 0);
 num[1] = br_asn1_uint_prepare(pk->n, pk->nlen);
 num[2] = br_asn1_uint_prepare(pk->e, pk->elen);
 num[3] = br_asn1_uint_prepare(d, dlen);
 num[4] = br_asn1_uint_prepare(sk->p, sk->plen);
 num[5] = br_asn1_uint_prepare(sk->q, sk->qlen);
 num[6] = br_asn1_uint_prepare(sk->dp, sk->dplen);
 num[7] = br_asn1_uint_prepare(sk->dq, sk->dqlen);
 num[8] = br_asn1_uint_prepare(sk->iq, sk->iqlen);




 slen = 0;
 for (u = 0; u < 9; u ++) {
  uint32_t ilen;

  ilen = num[u].asn1len;
  slen += 1 + len_of_len(ilen) + ilen;
 }

 if (dest == ((void*)0)) {
  return 1 + len_of_len(slen) + slen;
 } else {
  unsigned char *buf;
  size_t lenlen;

  buf = dest;
  *buf ++ = 0x30;
  lenlen = br_asn1_encode_length(buf, slen);
  buf += lenlen;
  for (u = 0; u < 9; u ++) {
   buf += br_asn1_encode_uint(buf, num[u]);
  }
  return 1 + lenlen + slen;
 }
}
