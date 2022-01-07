
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_rsa_i31_keygen ;
 int br_rsa_i31_private ;
 int br_rsa_i31_public ;
 int test_speed_rsa_inner (char*,int *,int *,int *) ;

__attribute__((used)) static void
test_speed_rsa_i31(void)
{
 test_speed_rsa_inner("RSA i31",
  &br_rsa_i31_public, &br_rsa_i31_private, &br_rsa_i31_keygen);
}
