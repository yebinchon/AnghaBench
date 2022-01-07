
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ec_impl ;


 int br_curve25519 ;
 int * br_ec_c25519_m62_get () ;
 int printf (char*,char*) ;
 int test_speed_ec_inner (char*,int const*,int *) ;

__attribute__((used)) static void
test_speed_ec_c25519_m62(void)
{
 const br_ec_impl *ec;

 ec = br_ec_c25519_m62_get();
 if (ec != ((void*)0)) {
  test_speed_ec_inner("EC c25519_m62", ec, &br_curve25519);
 } else {
  printf("%-30s UNAVAILABLE\n", "EC c25519_m62");
 }
}
