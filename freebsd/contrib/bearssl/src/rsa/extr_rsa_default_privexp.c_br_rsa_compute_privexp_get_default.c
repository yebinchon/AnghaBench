
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * br_rsa_compute_privexp ;


 int br_rsa_i15_compute_privexp ;
 int br_rsa_i31_compute_privexp ;

br_rsa_compute_privexp
br_rsa_compute_privexp_get_default(void)
{



 return &br_rsa_i31_compute_privexp;

}
