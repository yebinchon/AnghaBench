
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ vma; } ;
struct TYPE_4__ {TYPE_3__* section; int value; } ;
struct TYPE_5__ {TYPE_1__ result; } ;


 TYPE_3__* bfd_abs_section_ptr ;
 TYPE_2__ expld ;

__attribute__((used)) static void
make_abs (void)
{
  expld.result.value += expld.result.section->vma;
  expld.result.section = bfd_abs_section_ptr;
}
