
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_client_context ;


 int memset (int *,int ,int) ;

void
br_ssl_client_zero(br_ssl_client_context *cc)
{






 memset(cc, 0, sizeof *cc);
}
