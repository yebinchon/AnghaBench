
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_engine_context ;


 int br_ec_all_m15 ;
 int br_ec_all_m31 ;
 int br_ssl_engine_set_ec (int *,int *) ;

void
br_ssl_engine_set_default_ec(br_ssl_engine_context *cc)
{



 br_ssl_engine_set_ec(cc, &br_ec_all_m31);

}
