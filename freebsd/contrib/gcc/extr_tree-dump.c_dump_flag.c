
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* dump_info_p ;
struct TYPE_3__ {int flags; scalar_t__ node; } ;



int dump_flag (dump_info_p di, int flag, tree node)
{
  return (di->flags & flag) && (node != di->node);
}
