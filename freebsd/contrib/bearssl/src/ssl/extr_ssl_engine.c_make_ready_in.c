
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ixc; scalar_t__ iomode; scalar_t__ ixb; scalar_t__ ixa; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 scalar_t__ BR_IO_IN ;
 scalar_t__ BR_IO_INOUT ;

__attribute__((used)) static void
make_ready_in(br_ssl_engine_context *rc)
{
 rc->ixa = rc->ixb = 0;
 rc->ixc = 5;
 if (rc->iomode == BR_IO_IN) {
  rc->iomode = BR_IO_INOUT;
 }
}
