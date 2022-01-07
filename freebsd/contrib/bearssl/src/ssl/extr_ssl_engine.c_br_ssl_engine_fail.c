
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ iomode; int err; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 scalar_t__ BR_IO_FAILED ;

void
br_ssl_engine_fail(br_ssl_engine_context *rc, int err)
{
 if (rc->iomode != BR_IO_FAILED) {
  rc->iomode = BR_IO_FAILED;
  rc->err = err;
 }
}
