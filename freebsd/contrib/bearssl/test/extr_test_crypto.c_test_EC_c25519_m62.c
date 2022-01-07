
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int br_ec_impl ;


 int BR_EC_curve25519 ;
 int * br_ec_c25519_m62_get () ;
 int printf (char*) ;
 int test_EC_c25519 (char*,int const*) ;
 int test_EC_keygen (char*,int const*,int) ;

__attribute__((used)) static void
test_EC_c25519_m62(void)
{
 const br_ec_impl *ec;

 ec = br_ec_c25519_m62_get();
 if (ec != ((void*)0)) {
  test_EC_c25519("EC_c25519_m62", ec);
  test_EC_keygen("EC_c25519_m62", ec,
   (uint32_t)1 << BR_EC_curve25519);
 } else {
  printf("Test EC_c25519_m62: UNAVAILABLE\n");
  printf("Test EC_c25519_m62 keygen: UNAVAILABLE\n");
 }
}
