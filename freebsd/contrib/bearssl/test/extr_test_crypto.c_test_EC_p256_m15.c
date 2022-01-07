
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BR_EC_secp256r1 ;
 int br_ec_p256_m15 ;
 int test_EC_KAT (char*,int *,int) ;
 int test_EC_keygen (char*,int *,int) ;

__attribute__((used)) static void
test_EC_p256_m15(void)
{
 test_EC_KAT("EC_p256_m15", &br_ec_p256_m15,
  (uint32_t)1 << BR_EC_secp256r1);
 test_EC_keygen("EC_p256_m15", &br_ec_p256_m15,
  (uint32_t)1 << BR_EC_secp256r1);
}
