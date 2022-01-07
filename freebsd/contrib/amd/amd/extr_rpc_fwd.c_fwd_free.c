
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rf_q; } ;
typedef TYPE_1__ rpc_forward ;


 int XFREE (TYPE_1__*) ;
 int rem_que (int *) ;

__attribute__((used)) static void
fwd_free(rpc_forward *p)
{
  rem_que(&p->rf_q);
  XFREE(p);
}
