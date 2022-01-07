
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dbcnt; } ;
struct TYPE_3__ {scalar_t__ dbcnt; } ;


 TYPE_2__ in ;
 TYPE_1__ out ;

void
def_close(void)
{

 if (in.dbcnt)
  out.dbcnt = in.dbcnt;
}
