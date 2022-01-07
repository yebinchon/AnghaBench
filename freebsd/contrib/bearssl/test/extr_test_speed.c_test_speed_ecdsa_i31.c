
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_ec_prime_i31 ;
 int br_ecdsa_i31_sign_asn1 ;
 int br_ecdsa_i31_vrfy_asn1 ;
 int br_secp256r1 ;
 int br_secp384r1 ;
 int br_secp521r1 ;
 int test_speed_ecdsa_inner (char*,int *,int *,int *,int *) ;

__attribute__((used)) static void
test_speed_ecdsa_i31(void)
{
 test_speed_ecdsa_inner("ECDSA i31 P-256",
  &br_ec_prime_i31, &br_secp256r1,
  &br_ecdsa_i31_sign_asn1,
  &br_ecdsa_i31_vrfy_asn1);
 test_speed_ecdsa_inner("ECDSA i31 P-384",
  &br_ec_prime_i31, &br_secp384r1,
  &br_ecdsa_i31_sign_asn1,
  &br_ecdsa_i31_vrfy_asn1);
 test_speed_ecdsa_inner("ECDSA i31 P-521",
  &br_ec_prime_i31, &br_secp521r1,
  &br_ecdsa_i31_sign_asn1,
  &br_ecdsa_i31_vrfy_asn1);
}
