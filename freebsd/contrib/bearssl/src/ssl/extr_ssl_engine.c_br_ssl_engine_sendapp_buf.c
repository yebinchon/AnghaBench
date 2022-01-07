
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int application_data; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 unsigned char* sendpld_buf (TYPE_1__ const*,size_t*) ;

unsigned char *
br_ssl_engine_sendapp_buf(const br_ssl_engine_context *cc, size_t *len)
{
 if (!(cc->application_data & 1)) {
  *len = 0;
  return ((void*)0);
 }
 return sendpld_buf(cc, len);
}
