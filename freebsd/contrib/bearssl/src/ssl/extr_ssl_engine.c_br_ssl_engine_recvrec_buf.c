
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ssl_engine_context ;


 unsigned char* recvrec_buf (int const*,size_t*) ;

unsigned char *
br_ssl_engine_recvrec_buf(const br_ssl_engine_context *cc, size_t *len)
{
 return recvrec_buf(cc, len);
}
