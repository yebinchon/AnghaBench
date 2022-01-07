
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* scan ) (TYPE_1__ const*,char const*) ;struct TYPE_5__* next; } ;
typedef TYPE_1__ bfd_arch_info_type ;


 TYPE_1__** bfd_archures_list ;
 scalar_t__ stub1 (TYPE_1__ const*,char const*) ;

const bfd_arch_info_type *
bfd_scan_arch (const char *string)
{
  const bfd_arch_info_type * const *app, *ap;


  for (app = bfd_archures_list; *app != ((void*)0); app++)
    {
      for (ap = *app; ap != ((void*)0); ap = ap->next)
 {
   if (ap->scan (ap, string))
     return ap;
 }
    }

  return ((void*)0);
}
