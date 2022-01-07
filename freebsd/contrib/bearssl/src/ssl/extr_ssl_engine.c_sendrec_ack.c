
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ oxb; scalar_t__ oxa; scalar_t__ oxc; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 int make_ready_out (TYPE_1__*) ;

__attribute__((used)) static void
sendrec_ack(br_ssl_engine_context *rc, size_t len)
{
 rc->oxb = (rc->oxa += len);
 if (rc->oxa == rc->oxc) {
  make_ready_out(rc);
 }
}
