
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int (* muladd ) (unsigned char*,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char const*,size_t,int) ;} ;
struct TYPE_5__ {int (* muladd ) (unsigned char*,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char const*,size_t,int) ;} ;
struct TYPE_4__ {int (* muladd ) (unsigned char*,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char const*,size_t,int) ;} ;




 TYPE_3__ br_ec_c25519_m15 ;
 TYPE_2__ br_ec_p256_m15 ;
 TYPE_1__ br_ec_prime_i15 ;
 int stub1 (unsigned char*,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char const*,size_t,int) ;
 int stub2 (unsigned char*,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char const*,size_t,int) ;
 int stub3 (unsigned char*,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char const*,size_t,int) ;

__attribute__((used)) static uint32_t
api_muladd(unsigned char *A, const unsigned char *B, size_t len,
 const unsigned char *x, size_t xlen,
 const unsigned char *y, size_t ylen, int curve)
{
 switch (curve) {
 case 128:
  return br_ec_p256_m15.muladd(A, B, len,
   x, xlen, y, ylen, curve);
 case 129:
  return br_ec_c25519_m15.muladd(A, B, len,
   x, xlen, y, ylen, curve);
 default:
  return br_ec_prime_i15.muladd(A, B, len,
   x, xlen, y, ylen, curve);
 }
}
