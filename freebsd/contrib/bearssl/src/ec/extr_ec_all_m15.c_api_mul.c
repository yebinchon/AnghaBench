
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int (* mul ) (unsigned char*,size_t,unsigned char const*,size_t,int) ;} ;
struct TYPE_5__ {int (* mul ) (unsigned char*,size_t,unsigned char const*,size_t,int) ;} ;
struct TYPE_4__ {int (* mul ) (unsigned char*,size_t,unsigned char const*,size_t,int) ;} ;




 TYPE_3__ br_ec_c25519_m15 ;
 TYPE_2__ br_ec_p256_m15 ;
 TYPE_1__ br_ec_prime_i15 ;
 int stub1 (unsigned char*,size_t,unsigned char const*,size_t,int) ;
 int stub2 (unsigned char*,size_t,unsigned char const*,size_t,int) ;
 int stub3 (unsigned char*,size_t,unsigned char const*,size_t,int) ;

__attribute__((used)) static uint32_t
api_mul(unsigned char *G, size_t Glen,
 const unsigned char *kb, size_t kblen, int curve)
{
 switch (curve) {
 case 128:
  return br_ec_p256_m15.mul(G, Glen, kb, kblen, curve);
 case 129:
  return br_ec_c25519_m15.mul(G, Glen, kb, kblen, curve);
 default:
  return br_ec_prime_i15.mul(G, Glen, kb, kblen, curve);
 }
}
