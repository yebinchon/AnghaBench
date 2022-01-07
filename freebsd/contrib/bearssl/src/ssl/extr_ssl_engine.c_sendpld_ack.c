
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ iomode; scalar_t__ ibuf; scalar_t__ obuf; scalar_t__ oxa; scalar_t__ oxb; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 scalar_t__ BR_IO_INOUT ;
 scalar_t__ BR_IO_OUT ;
 int sendpld_flush (TYPE_1__*,int ) ;

__attribute__((used)) static void
sendpld_ack(br_ssl_engine_context *rc, size_t len)
{




 if (rc->iomode == BR_IO_INOUT && rc->ibuf == rc->obuf) {
  rc->iomode = BR_IO_OUT;
 }
 rc->oxa += len;
 if (rc->oxa >= rc->oxb) {





  rc->oxb = rc->oxa + 1;
  sendpld_flush(rc, 0);
 }
}
