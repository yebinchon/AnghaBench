
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* name; struct TYPE_5__* next; int used; void* value; } ;
typedef TYPE_1__ segment_type ;
typedef void* bfd_vma ;


 int FALSE ;
 int _ (char*) ;
 void* bfd_scan_vma (char*,char const**,int) ;
 int einfo (int ,char*) ;
 int exp_intop (void*) ;
 int lang_section_start (char const*,int ,TYPE_1__*) ;
 TYPE_1__* segments ;
 TYPE_1__* stat_alloc (int) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void
set_segment_start (const char *section, char *valstr)
{
  const char *name;
  const char *end;
  segment_type *seg;

  bfd_vma val = bfd_scan_vma (valstr, &end, 16);
  if (*end)
    einfo (_("%P%F: invalid hex number `%s'\n"), valstr);


  name = section + 1;
  for (seg = segments; seg; seg = seg->next)
    if (strcmp (seg->name, name) == 0)
      {
 seg->value = val;
 return;
      }


  seg = stat_alloc (sizeof (*seg));
  seg->name = name;
  seg->value = val;
  seg->used = FALSE;

  seg->next = segments;
  segments = seg;




  lang_section_start (section, exp_intop (val), seg);
}
