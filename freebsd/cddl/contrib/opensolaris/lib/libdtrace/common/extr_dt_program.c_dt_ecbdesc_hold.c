
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dted_refcnt; } ;
typedef TYPE_1__ dtrace_ecbdesc_t ;



__attribute__((used)) static void
dt_ecbdesc_hold(dtrace_ecbdesc_t *edp)
{
 edp->dted_refcnt++;
}
