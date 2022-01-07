
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_engine_context ;


 int BR_SSL_CLOSED ;
 unsigned int BR_SSL_RECVAPP ;
 unsigned int BR_SSL_RECVREC ;
 unsigned int BR_SSL_SENDAPP ;
 unsigned int BR_SSL_SENDREC ;
 scalar_t__ br_ssl_engine_closed (int const*) ;
 int * br_ssl_engine_recvapp_buf (int const*,size_t*) ;
 int * br_ssl_engine_recvrec_buf (int const*,size_t*) ;
 int * br_ssl_engine_sendapp_buf (int const*,size_t*) ;
 int * br_ssl_engine_sendrec_buf (int const*,size_t*) ;

unsigned
br_ssl_engine_current_state(const br_ssl_engine_context *cc)
{
 unsigned s;
 size_t len;

 if (br_ssl_engine_closed(cc)) {
  return BR_SSL_CLOSED;
 }

 s = 0;
 if (br_ssl_engine_sendrec_buf(cc, &len) != ((void*)0)) {
  s |= BR_SSL_SENDREC;
 }
 if (br_ssl_engine_recvrec_buf(cc, &len) != ((void*)0)) {
  s |= BR_SSL_RECVREC;
 }
 if (br_ssl_engine_sendapp_buf(cc, &len) != ((void*)0)) {
  s |= BR_SSL_SENDAPP;
 }
 if (br_ssl_engine_recvapp_buf(cc, &len) != ((void*)0)) {
  s |= BR_SSL_RECVAPP;
 }
 return s;
}
