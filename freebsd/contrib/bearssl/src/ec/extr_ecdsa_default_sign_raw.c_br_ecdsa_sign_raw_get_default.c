
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * br_ecdsa_sign ;


 int br_ecdsa_i15_sign_raw ;
 int br_ecdsa_i31_sign_raw ;

br_ecdsa_sign
br_ecdsa_sign_raw_get_default(void)
{



 return &br_ecdsa_i31_sign_raw;

}
