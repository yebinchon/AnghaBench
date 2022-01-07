
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event; } ;
typedef TYPE_1__ br_pem_decoder_context ;



int
br_pem_decoder_event(br_pem_decoder_context *ctx)
{
 int event;

 event = ctx->event;
 ctx->event = 0;
 return event;
}
