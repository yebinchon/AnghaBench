
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_vma ;
typedef int asection ;
struct TYPE_3__ {char* str; int * section; int value; int valid_p; } ;
struct TYPE_4__ {TYPE_1__ result; } ;


 int TRUE ;
 TYPE_2__ expld ;

__attribute__((used)) static void
new_rel (bfd_vma value, char *str, asection *section)
{
  expld.result.valid_p = TRUE;
  expld.result.value = value;
  expld.result.str = str;
  expld.result.section = section;
}
