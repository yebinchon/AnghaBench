
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * opt; } ;
typedef TYPE_1__ opt_apply ;


 int XFREE (int ) ;

__attribute__((used)) static void
free_op(opt_apply *p, int b)
{
  XFREE(*p->opt);
}
