
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_ec_prime_i15 ;
 int br_secp256r1 ;
 int br_secp384r1 ;
 int br_secp521r1 ;
 int test_speed_ec_inner (char*,int *,int *) ;

__attribute__((used)) static void
test_speed_ec_prime_i15(void)
{
 test_speed_ec_inner("EC prime_i15 P-256",
  &br_ec_prime_i15, &br_secp256r1);
 test_speed_ec_inner("EC prime_i15 P-384",
  &br_ec_prime_i15, &br_secp384r1);
 test_speed_ec_inner("EC prime_i15 P-521",
  &br_ec_prime_i15, &br_secp521r1);
}
