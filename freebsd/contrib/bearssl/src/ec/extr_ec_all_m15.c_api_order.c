
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned char const* (* order ) (int,size_t*) ;} ;
struct TYPE_5__ {unsigned char const* (* order ) (int,size_t*) ;} ;
struct TYPE_4__ {unsigned char const* (* order ) (int,size_t*) ;} ;




 TYPE_3__ br_ec_c25519_m15 ;
 TYPE_2__ br_ec_p256_m15 ;
 TYPE_1__ br_ec_prime_i15 ;
 unsigned char const* stub1 (int,size_t*) ;
 unsigned char const* stub2 (int,size_t*) ;
 unsigned char const* stub3 (int,size_t*) ;

__attribute__((used)) static const unsigned char *
api_order(int curve, size_t *len)
{
 switch (curve) {
 case 128:
  return br_ec_p256_m15.order(curve, len);
 case 129:
  return br_ec_c25519_m15.order(curve, len);
 default:
  return br_ec_prime_i15.order(curve, len);
 }
}
