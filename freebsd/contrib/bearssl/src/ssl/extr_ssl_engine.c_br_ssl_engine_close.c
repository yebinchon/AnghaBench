
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_engine_context ;


 int br_ssl_engine_closed (int *) ;
 int jump_handshake (int *,int) ;

void
br_ssl_engine_close(br_ssl_engine_context *cc)
{
 if (!br_ssl_engine_closed(cc)) {
  jump_handshake(cc, 1);
 }
}
