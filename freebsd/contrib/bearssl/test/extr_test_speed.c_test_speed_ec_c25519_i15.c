
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_curve25519 ;
 int br_ec_c25519_i15 ;
 int test_speed_ec_inner (char*,int *,int *) ;

__attribute__((used)) static void
test_speed_ec_c25519_i15(void)
{
 test_speed_ec_inner("EC c25519_i15",
  &br_ec_c25519_i15, &br_curve25519);
}
