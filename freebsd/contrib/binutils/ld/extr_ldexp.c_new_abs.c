
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_vma ;
struct TYPE_3__ {int * str; int value; int section; int valid_p; } ;
struct TYPE_4__ {TYPE_1__ result; } ;


 int TRUE ;
 int bfd_abs_section_ptr ;
 TYPE_2__ expld ;

__attribute__((used)) static void
new_abs (bfd_vma value)
{
  expld.result.valid_p = TRUE;
  expld.result.section = bfd_abs_section_ptr;
  expld.result.value = value;
  expld.result.str = ((void*)0);
}
