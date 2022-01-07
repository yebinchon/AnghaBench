
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
struct TYPE_4__ {TYPE_2__* section; int * str; scalar_t__ value; int valid_p; } ;
struct TYPE_6__ {TYPE_2__* section; TYPE_1__ result; } ;
struct TYPE_5__ {scalar_t__ vma; } ;


 int TRUE ;
 TYPE_3__ expld ;

__attribute__((used)) static void
new_rel_from_abs (bfd_vma value)
{
  expld.result.valid_p = TRUE;
  expld.result.value = value - expld.section->vma;
  expld.result.str = ((void*)0);
  expld.result.section = expld.section;
}
