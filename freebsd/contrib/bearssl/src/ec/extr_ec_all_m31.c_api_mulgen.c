
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {size_t (* mulgen ) (unsigned char*,unsigned char const*,size_t,int) ;} ;
struct TYPE_9__ {size_t (* mulgen ) (unsigned char*,unsigned char const*,size_t,int) ;} ;
struct TYPE_8__ {size_t (* mulgen ) (unsigned char*,unsigned char const*,size_t,int) ;} ;
struct TYPE_7__ {size_t (* mulgen ) (unsigned char*,unsigned char const*,size_t,int) ;} ;
struct TYPE_6__ {size_t (* mulgen ) (unsigned char*,unsigned char const*,size_t,int) ;} ;




 TYPE_5__ br_ec_c25519_m31 ;
 TYPE_4__ br_ec_c25519_m64 ;
 TYPE_3__ br_ec_p256_m31 ;
 TYPE_2__ br_ec_p256_m64 ;
 TYPE_1__ br_ec_prime_i31 ;
 size_t stub1 (unsigned char*,unsigned char const*,size_t,int) ;
 size_t stub2 (unsigned char*,unsigned char const*,size_t,int) ;
 size_t stub3 (unsigned char*,unsigned char const*,size_t,int) ;
 size_t stub4 (unsigned char*,unsigned char const*,size_t,int) ;
 size_t stub5 (unsigned char*,unsigned char const*,size_t,int) ;

__attribute__((used)) static size_t
api_mulgen(unsigned char *R,
 const unsigned char *x, size_t xlen, int curve)
{
 switch (curve) {
 case 128:



  return br_ec_p256_m31.mulgen(R, x, xlen, curve);

 case 129:



  return br_ec_c25519_m31.mulgen(R, x, xlen, curve);

 default:
  return br_ec_prime_i31.mulgen(R, x, xlen, curve);
 }
}
