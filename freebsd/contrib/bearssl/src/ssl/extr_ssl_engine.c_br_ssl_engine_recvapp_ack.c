
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_engine_context ;


 int recvpld_ack (int *,size_t) ;

void
br_ssl_engine_recvapp_ack(br_ssl_engine_context *cc, size_t len)
{
 recvpld_ack(cc, len);
}
