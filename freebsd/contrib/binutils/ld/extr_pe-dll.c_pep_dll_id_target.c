
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ object_target; scalar_t__ target_name; } ;


 int _ (char*) ;
 int einfo (int ,char const*) ;
 int exit (int) ;
 TYPE_1__* pe_detail_list ;
 TYPE_1__* pe_details ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

void
pe_dll_id_target (const char *target)
{
  int i;

  for (i = 0; pe_detail_list[i].target_name; i++)
    if (strcmp (pe_detail_list[i].target_name, target) == 0
 || strcmp (pe_detail_list[i].object_target, target) == 0)
      {
 pe_details = pe_detail_list + i;
 return;
      }
  einfo (_("%XUnsupported PEI architecture: %s\n"), target);
  exit (1);
}
