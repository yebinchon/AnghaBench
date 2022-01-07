
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pub; int priv; TYPE_3__* hf; int sraw; int sasn1; int msg; } ;
typedef TYPE_1__ ecdsa_kat_vector ;
struct TYPE_7__ {int vtable; } ;
typedef TYPE_2__ br_hash_compat_context ;
typedef int (* br_ecdsa_vrfy ) (int const*,unsigned char*,size_t,scalar_t__,unsigned char*,size_t) ;
typedef size_t (* br_ecdsa_sign ) (int const*,TYPE_3__*,unsigned char*,int ,unsigned char*) ;
typedef int br_ec_impl ;
struct TYPE_8__ {size_t desc; int (* out ) (int *,unsigned char*) ;int (* update ) (int *,int ,int ) ;int (* init ) (int *) ;} ;


 size_t BR_HASHDESC_OUT_MASK ;
 size_t BR_HASHDESC_OUT_OFF ;
 TYPE_1__* ECDSA_KAT ;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 size_t hextobin (unsigned char*,int ) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,size_t) ;
 int printf (char*) ;
 int stderr ;
 int stdout ;
 int strlen (int ) ;
 int stub1 (int *) ;
 int stub2 (int *,int ,int ) ;
 int stub3 (int *,unsigned char*) ;

__attribute__((used)) static void
test_ECDSA_KAT(const br_ec_impl *iec,
 br_ecdsa_sign sign, br_ecdsa_vrfy vrfy, int asn1)
{
 size_t u;

 for (u = 0;; u ++) {
  const ecdsa_kat_vector *kv;
  unsigned char hash[64];
  size_t hash_len;
  unsigned char sig[150], sig2[150];
  size_t sig_len, sig2_len;
  br_hash_compat_context hc;

  kv = &ECDSA_KAT[u];
  if (kv->pub == 0) {
   break;
  }
  kv->hf->init(&hc.vtable);
  kv->hf->update(&hc.vtable, kv->msg, strlen(kv->msg));
  kv->hf->out(&hc.vtable, hash);
  hash_len = (kv->hf->desc >> BR_HASHDESC_OUT_OFF)
   & BR_HASHDESC_OUT_MASK;
  if (asn1) {
   sig_len = hextobin(sig, kv->sasn1);
  } else {
   sig_len = hextobin(sig, kv->sraw);
  }

  if (vrfy(iec, hash, hash_len,
   kv->pub, sig, sig_len) != 1)
  {
   fprintf(stderr, "ECDSA KAT verify failed (1)\n");
   exit(EXIT_FAILURE);
  }
  hash[0] ^= 0x80;
  if (vrfy(iec, hash, hash_len,
   kv->pub, sig, sig_len) != 0)
  {
   fprintf(stderr, "ECDSA KAT verify shoud have failed\n");
   exit(EXIT_FAILURE);
  }
  hash[0] ^= 0x80;
  if (vrfy(iec, hash, hash_len,
   kv->pub, sig, sig_len) != 1)
  {
   fprintf(stderr, "ECDSA KAT verify failed (2)\n");
   exit(EXIT_FAILURE);
  }

  sig2_len = sign(iec, kv->hf, hash, kv->priv, sig2);
  if (sig2_len == 0) {
   fprintf(stderr, "ECDSA KAT sign failed\n");
   exit(EXIT_FAILURE);
  }
  if (sig2_len != sig_len || memcmp(sig, sig2, sig_len) != 0) {
   fprintf(stderr, "ECDSA KAT wrong signature value\n");
   exit(EXIT_FAILURE);
  }

  printf(".");
  fflush(stdout);
 }
}
