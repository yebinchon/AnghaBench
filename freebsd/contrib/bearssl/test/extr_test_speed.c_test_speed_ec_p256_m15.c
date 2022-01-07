
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_ec_p256_m15 ;
 int br_secp256r1 ;
 int test_speed_ec_inner (char*,int *,int *) ;

__attribute__((used)) static void
test_speed_ec_p256_m15(void)
{
 test_speed_ec_inner("EC p256_m15",
  &br_ec_p256_m15, &br_secp256r1);
}
