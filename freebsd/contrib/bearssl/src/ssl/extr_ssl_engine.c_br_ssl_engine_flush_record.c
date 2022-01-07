
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ hbuf_out; scalar_t__ saved_hbuf_out; int hlen_out; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 scalar_t__ br_ssl_engine_has_pld_to_send (TYPE_1__*) ;
 int sendpld_ack (TYPE_1__*,scalar_t__) ;
 scalar_t__ sendpld_buf (TYPE_1__*,int *) ;
 int sendpld_flush (TYPE_1__*,int ) ;

void
br_ssl_engine_flush_record(br_ssl_engine_context *cc)
{
 if (cc->hbuf_out != cc->saved_hbuf_out) {
  sendpld_ack(cc, cc->hbuf_out - cc->saved_hbuf_out);
 }
 if (br_ssl_engine_has_pld_to_send(cc)) {
  sendpld_flush(cc, 0);
 }
 cc->saved_hbuf_out = cc->hbuf_out = sendpld_buf(cc, &cc->hlen_out);
}
