
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ clock_t ;
struct TYPE_5__ {int (* mul ) (unsigned char*,size_t,unsigned char*,size_t,int ) ;} ;
typedef TYPE_1__ br_ec_impl ;
struct TYPE_6__ {size_t order_len; size_t generator_len; int curve; int generator; int order; } ;
typedef TYPE_2__ br_ec_curve_def ;


 double CLOCKS_PER_SEC ;
 int br_i31_decode (int *,int ,size_t) ;
 int br_i31_decode_reduce (int *,unsigned char*,int,int *) ;
 int br_i31_encode (unsigned char*,size_t,int *) ;
 scalar_t__ clock () ;
 int fflush (int ) ;
 int memcpy (unsigned char*,int ,size_t) ;
 int memset (unsigned char*,char,int) ;
 int printf (char*,char const*,double) ;
 int stdout ;
 int stub1 (unsigned char*,size_t,unsigned char*,size_t,int ) ;
 int stub2 (unsigned char*,size_t,unsigned char*,size_t,int ) ;

__attribute__((used)) static void
test_speed_ec_inner_1(const char *name,
 const br_ec_impl *impl, const br_ec_curve_def *cd)
{
 unsigned char bx[80], U[160];
 uint32_t x[22], n[22];
 size_t nlen, ulen;
 int i;
 long num;

 nlen = cd->order_len;
 br_i31_decode(n, cd->order, nlen);
 memset(bx, 'T', sizeof bx);
 br_i31_decode_reduce(x, bx, sizeof bx, n);
 br_i31_encode(bx, nlen, x);
 ulen = cd->generator_len;
 memcpy(U, cd->generator, ulen);
 for (i = 0; i < 10; i ++) {
  impl->mul(U, ulen, bx, nlen, cd->curve);
 }
 num = 10;
 for (;;) {
  clock_t begin, end;
  double tt;
  long k;

  begin = clock();
  for (k = num; k > 0; k --) {
   impl->mul(U, ulen, bx, nlen, cd->curve);
  }
  end = clock();
  tt = (double)(end - begin) / CLOCKS_PER_SEC;
  if (tt >= 2.0) {
   printf("%-30s %8.2f mul/s\n", name,
    (double)num / tt);
   fflush(stdout);
   break;
  }
  num <<= 1;
 }
}
