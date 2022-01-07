
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t ixa; size_t ixb; scalar_t__ ixc; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 int make_ready_in (TYPE_1__*) ;

__attribute__((used)) static void
recvpld_ack(br_ssl_engine_context *rc, size_t len)
{
 rc->ixa += len;







 if (rc->ixa == rc->ixb) {
  if (rc->ixc == 0) {
   make_ready_in(rc);
  } else {
   rc->ixa = rc->ixb = 5;
  }
 }
}
