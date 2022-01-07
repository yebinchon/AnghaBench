
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ record_type_out; int application_data; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 scalar_t__ BR_SSL_APPLICATION_DATA ;
 int has_rec_tosend (TYPE_1__*) ;
 int jump_handshake (TYPE_1__*,int ) ;
 int sendrec_ack (TYPE_1__*,size_t) ;

void
br_ssl_engine_sendrec_ack(br_ssl_engine_context *cc, size_t len)
{
 sendrec_ack(cc, len);
 if (len != 0 && !has_rec_tosend(cc)
  && (cc->record_type_out != BR_SSL_APPLICATION_DATA
  || (cc->application_data & 1) == 0))
 {
  jump_handshake(cc, 0);
 }
}
