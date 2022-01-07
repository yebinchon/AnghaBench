
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ br_rsa_public ;
typedef int br_rsa_private ;
typedef int br_rsa_keygen ;


 int br_rsa_i62_keygen_get () ;
 int br_rsa_i62_private_get () ;
 scalar_t__ br_rsa_i62_public_get () ;
 int printf (char*,char*) ;
 int test_speed_rsa_inner (char*,scalar_t__,int ,int ) ;

__attribute__((used)) static void
test_speed_rsa_i62(void)
{
 br_rsa_public pub;
 br_rsa_private priv;
 br_rsa_keygen kgen;

 pub = br_rsa_i62_public_get();
 priv = br_rsa_i62_private_get();
 kgen = br_rsa_i62_keygen_get();
 if (pub) {
  test_speed_rsa_inner("RSA i62", pub, priv, kgen);
 } else {
  printf("%-30s UNAVAILABLE\n", "RSA i62");
 }
}
