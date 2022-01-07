
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_rsa_i15_compute_modulus ;
 int br_rsa_i15_compute_privexp ;
 int br_rsa_i15_compute_pubexp ;
 int br_rsa_i15_keygen ;
 int br_rsa_i15_oaep_decrypt ;
 int br_rsa_i15_oaep_encrypt ;
 int br_rsa_i15_pkcs1_sign ;
 int br_rsa_i15_pkcs1_vrfy ;
 int br_rsa_i15_private ;
 int br_rsa_i15_pss_sign ;
 int br_rsa_i15_pss_vrfy ;
 int br_rsa_i15_public ;
 int test_RSA_OAEP (char*,int *,int *) ;
 int test_RSA_PSS (char*,int *,int *) ;
 int test_RSA_core (char*,int *,int *) ;
 int test_RSA_keygen (char*,int *,int *,int *,int *,int *,int *,int *) ;
 int test_RSA_sign (char*,int *,int *,int *) ;

__attribute__((used)) static void
test_RSA_i15(void)
{
 test_RSA_core("RSA i15 core", &br_rsa_i15_public, &br_rsa_i15_private);
 test_RSA_sign("RSA i15 sign", &br_rsa_i15_private,
  &br_rsa_i15_pkcs1_sign, &br_rsa_i15_pkcs1_vrfy);
 test_RSA_OAEP("RSA i15 OAEP",
  &br_rsa_i15_oaep_encrypt, &br_rsa_i15_oaep_decrypt);
 test_RSA_PSS("RSA i15 PSS",
  &br_rsa_i15_pss_sign, &br_rsa_i15_pss_vrfy);
 test_RSA_keygen("RSA i15 keygen", &br_rsa_i15_keygen,
  &br_rsa_i15_compute_modulus, &br_rsa_i15_compute_pubexp,
  &br_rsa_i15_compute_privexp, &br_rsa_i15_public,
  &br_rsa_i15_pkcs1_sign, &br_rsa_i15_pkcs1_vrfy);
}
