
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ clock_t ;
typedef int (* br_ecdsa_vrfy ) (TYPE_1__ const*,unsigned char*,int,TYPE_2__*,unsigned char*,size_t) ;
typedef size_t (* br_ecdsa_sign ) (TYPE_1__ const*,int *,unsigned char*,TYPE_4__*,unsigned char*) ;
struct TYPE_16__ {unsigned char* q; size_t qlen; int curve; } ;
typedef TYPE_2__ br_ec_public_key ;
struct TYPE_17__ {unsigned char* x; size_t xlen; int curve; } ;
typedef TYPE_4__ br_ec_private_key ;
struct TYPE_15__ {int (* mul ) (unsigned char*,size_t,unsigned char*,size_t,int ) ;} ;
typedef TYPE_1__ br_ec_impl ;
struct TYPE_18__ {size_t order_len; size_t generator_len; int curve; int generator; int order; } ;
typedef TYPE_8__ br_ec_curve_def ;


 double CLOCKS_PER_SEC ;
 int EXIT_FAILURE ;
 int br_i31_decode (int *,int ,size_t) ;
 int br_i31_decode_reduce (int *,unsigned char*,int,int *) ;
 int br_i31_encode (unsigned char*,size_t,int *) ;
 int br_sha256_vtable ;
 scalar_t__ clock () ;
 int exit (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int memcpy (unsigned char*,int ,size_t) ;
 int memset (unsigned char*,char,int) ;
 int printf (char*,char const*,double) ;
 int stderr ;
 int stdout ;
 int stub1 (unsigned char*,size_t,unsigned char*,size_t,int ) ;

__attribute__((used)) static void
test_speed_ecdsa_inner(const char *name,
 const br_ec_impl *impl, const br_ec_curve_def *cd,
 br_ecdsa_sign sign, br_ecdsa_vrfy vrfy)
{
 unsigned char bx[80], U[160], hv[32], sig[160];
 uint32_t x[22], n[22];
 size_t nlen, ulen, sig_len;
 int i;
 long num;
 br_ec_private_key sk;
 br_ec_public_key pk;

 nlen = cd->order_len;
 br_i31_decode(n, cd->order, nlen);
 memset(bx, 'T', sizeof bx);
 br_i31_decode_reduce(x, bx, sizeof bx, n);
 br_i31_encode(bx, nlen, x);
 ulen = cd->generator_len;
 memcpy(U, cd->generator, ulen);
 impl->mul(U, ulen, bx, nlen, cd->curve);
 sk.curve = cd->curve;
 sk.x = bx;
 sk.xlen = nlen;
 pk.curve = cd->curve;
 pk.q = U;
 pk.qlen = ulen;

 memset(hv, 'H', sizeof hv);
 sig_len = sign(impl, &br_sha256_vtable, hv, &sk, sig);
 if (vrfy(impl, hv, sizeof hv, &pk, sig, sig_len) != 1) {
  fprintf(stderr, "self-test sign/verify failed\n");
  exit(EXIT_FAILURE);
 }

 for (i = 0; i < 10; i ++) {
  hv[1] ++;
  sign(impl, &br_sha256_vtable, hv, &sk, sig);
  vrfy(impl, hv, sizeof hv, &pk, sig, sig_len);
 }

 num = 10;
 for (;;) {
  clock_t begin, end;
  double tt;
  long k;

  begin = clock();
  for (k = num; k > 0; k --) {
   hv[1] ++;
   sig_len = sign(impl, &br_sha256_vtable, hv, &sk, sig);
  }
  end = clock();
  tt = (double)(end - begin) / CLOCKS_PER_SEC;
  if (tt >= 2.0) {
   printf("%-30s %8.2f sign/s\n", name,
    (double)num / tt);
   fflush(stdout);
   break;
  }
  num <<= 1;
 }

 num = 10;
 for (;;) {
  clock_t begin, end;
  double tt;
  long k;

  begin = clock();
  for (k = num; k > 0; k --) {
   vrfy(impl, hv, sizeof hv, &pk, sig, sig_len);
  }
  end = clock();
  tt = (double)(end - begin) / CLOCKS_PER_SEC;
  if (tt >= 2.0) {
   printf("%-30s %8.2f verify/s\n", name,
    (double)num / tt);
   fflush(stdout);
   break;
  }
  num <<= 1;
 }
}
