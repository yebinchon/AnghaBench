
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_engine_context ;


 int br_ec_all_m15 ;
 int br_ec_all_m31 ;
 int br_ecdsa_i15_vrfy_asn1 ;
 int br_ecdsa_i31_vrfy_asn1 ;
 int br_ssl_engine_set_ec (int *,int *) ;
 int br_ssl_engine_set_ecdsa (int *,int *) ;

void
br_ssl_engine_set_default_ecdsa(br_ssl_engine_context *cc)
{




 br_ssl_engine_set_ec(cc, &br_ec_all_m31);
 br_ssl_engine_set_ecdsa(cc, &br_ecdsa_i31_vrfy_asn1);

}
