
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int br_ec_impl ;


 int BR_EC_secp256r1 ;
 int * br_ec_p256_m64_get () ;
 int printf (char*) ;
 int test_EC_KAT (char*,int const*,int) ;
 int test_EC_keygen (char*,int const*,int) ;

__attribute__((used)) static void
test_EC_p256_m64(void)
{
 const br_ec_impl *ec;

 ec = br_ec_p256_m64_get();
 if (ec != ((void*)0)) {
  test_EC_KAT("EC_p256_m64", ec,
   (uint32_t)1 << BR_EC_secp256r1);
  test_EC_keygen("EC_p256_m64", ec,
   (uint32_t)1 << BR_EC_secp256r1);
 } else {
  printf("Test EC_p256_m64: UNAVAILABLE\n");
  printf("Test EC_p256_m64 keygen: UNAVAILABLE\n");
 }
}
