
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ td_nextid; } ;
typedef TYPE_1__ tdata_t ;


 scalar_t__ faketypenumber ;

void
parse_finish(tdata_t *td)
{
 td->td_nextid = ++faketypenumber;
}
