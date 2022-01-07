
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_rsa_i32_oaep_decrypt ;
 int br_rsa_i32_oaep_encrypt ;
 int br_rsa_i32_pkcs1_sign ;
 int br_rsa_i32_pkcs1_vrfy ;
 int br_rsa_i32_private ;
 int br_rsa_i32_pss_sign ;
 int br_rsa_i32_pss_vrfy ;
 int br_rsa_i32_public ;
 int test_RSA_OAEP (char*,int *,int *) ;
 int test_RSA_PSS (char*,int *,int *) ;
 int test_RSA_core (char*,int *,int *) ;
 int test_RSA_sign (char*,int *,int *,int *) ;

__attribute__((used)) static void
test_RSA_i32(void)
{
 test_RSA_core("RSA i32 core", &br_rsa_i32_public, &br_rsa_i32_private);
 test_RSA_sign("RSA i32 sign", &br_rsa_i32_private,
  &br_rsa_i32_pkcs1_sign, &br_rsa_i32_pkcs1_vrfy);
 test_RSA_OAEP("RSA i32 OAEP",
  &br_rsa_i32_oaep_encrypt, &br_rsa_i32_oaep_decrypt);
 test_RSA_PSS("RSA i32 PSS",
  &br_rsa_i32_pss_sign, &br_rsa_i32_pss_vrfy);
}
