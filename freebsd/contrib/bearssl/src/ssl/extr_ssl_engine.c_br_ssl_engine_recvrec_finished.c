
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iomode; int ixa; int ixc; } ;
typedef TYPE_1__ br_ssl_engine_context ;





int
br_ssl_engine_recvrec_finished(const br_ssl_engine_context *rc)
{
 switch (rc->iomode) {
 case 129:
 case 128:
  return rc->ixc == 0 || rc->ixa < 5;
 default:
  return 1;
 }
}
