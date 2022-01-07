
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * br_rsa_compute_pubexp ;


 int br_rsa_i15_compute_pubexp ;
 int br_rsa_i31_compute_pubexp ;

br_rsa_compute_pubexp
br_rsa_compute_pubexp_get_default(void)
{



 return &br_rsa_i31_compute_pubexp;

}
