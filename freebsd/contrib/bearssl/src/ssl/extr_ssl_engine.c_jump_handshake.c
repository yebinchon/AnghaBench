
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ record_type_in; size_t hlen_in; size_t hlen_out; int action; int * saved_hbuf_out; int * hbuf_out; int cpu; int (* hsrun ) (int *) ;int * hbuf_in; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 scalar_t__ BR_SSL_APPLICATION_DATA ;
 scalar_t__ br_ssl_engine_closed (TYPE_1__*) ;
 scalar_t__ br_ssl_engine_has_pld_to_send (TYPE_1__*) ;
 int recvpld_ack (TYPE_1__*,size_t) ;
 int * recvpld_buf (TYPE_1__*,size_t*) ;
 int sendpld_ack (TYPE_1__*,int *) ;
 int * sendpld_buf (TYPE_1__*,size_t*) ;
 int stub1 (int *) ;

__attribute__((used)) static void
jump_handshake(br_ssl_engine_context *cc, int action)
{






 for (;;) {
  size_t hlen_in, hlen_out;







  cc->hbuf_in = recvpld_buf(cc, &hlen_in);
  if (cc->hbuf_in != ((void*)0)
   && cc->record_type_in == BR_SSL_APPLICATION_DATA)
  {
   hlen_in = 0;
  }







  cc->saved_hbuf_out = cc->hbuf_out = sendpld_buf(cc, &hlen_out);
  if (cc->hbuf_out != ((void*)0) && br_ssl_engine_has_pld_to_send(cc)) {
   hlen_out = 0;
  }







  cc->hlen_in = hlen_in;
  cc->hlen_out = hlen_out;
  cc->action = action;
  cc->hsrun(&cc->cpu);
  if (br_ssl_engine_closed(cc)) {
   return;
  }
  if (cc->hbuf_out != cc->saved_hbuf_out) {
   sendpld_ack(cc, cc->hbuf_out - cc->saved_hbuf_out);
  }
  if (hlen_in != cc->hlen_in) {
   recvpld_ack(cc, hlen_in - cc->hlen_in);
   if (cc->hlen_in == 0) {







    action = 0;
    continue;
   }
  }
  break;
 }
}
