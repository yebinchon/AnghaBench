
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int application_data; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 int br_ssl_engine_closed (TYPE_1__*) ;
 int sendpld_flush (TYPE_1__*,int) ;

void
br_ssl_engine_flush(br_ssl_engine_context *cc, int force)
{
 if (!br_ssl_engine_closed(cc) && (cc->application_data & 1) != 0) {
  sendpld_flush(cc, force);
 }
}
