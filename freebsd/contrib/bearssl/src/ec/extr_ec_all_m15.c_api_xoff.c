
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t (* xoff ) (int,size_t*) ;} ;
struct TYPE_5__ {size_t (* xoff ) (int,size_t*) ;} ;
struct TYPE_4__ {size_t (* xoff ) (int,size_t*) ;} ;




 TYPE_3__ br_ec_c25519_m15 ;
 TYPE_2__ br_ec_p256_m15 ;
 TYPE_1__ br_ec_prime_i15 ;
 size_t stub1 (int,size_t*) ;
 size_t stub2 (int,size_t*) ;
 size_t stub3 (int,size_t*) ;

__attribute__((used)) static size_t
api_xoff(int curve, size_t *len)
{
 switch (curve) {
 case 128:
  return br_ec_p256_m15.xoff(curve, len);
 case 129:
  return br_ec_c25519_m15.xoff(curve, len);
 default:
  return br_ec_prime_i15.xoff(curve, len);
 }
}
