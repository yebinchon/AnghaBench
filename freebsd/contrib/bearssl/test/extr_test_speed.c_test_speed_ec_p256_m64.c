
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ec_impl ;


 int * br_ec_p256_m64_get () ;
 int br_secp256r1 ;
 int printf (char*,char*) ;
 int test_speed_ec_inner (char*,int const*,int *) ;

__attribute__((used)) static void
test_speed_ec_p256_m64(void)
{
 const br_ec_impl *ec;

 ec = br_ec_p256_m64_get();
 if (ec != ((void*)0)) {
  test_speed_ec_inner("EC p256_m64", ec, &br_secp256r1);
 } else {
  printf("%-30s UNAVAILABLE\n", "EC p256_m64");
 }
}
