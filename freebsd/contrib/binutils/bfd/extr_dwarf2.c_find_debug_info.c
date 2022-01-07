
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sections; } ;
typedef TYPE_1__ bfd ;
struct TYPE_7__ {struct TYPE_7__* next; int name; } ;
typedef TYPE_2__ asection ;


 scalar_t__ CONST_STRNEQ (int ,int ) ;
 int DWARF2_DEBUG_INFO ;
 int GNU_LINKONCE_INFO ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static asection *
find_debug_info (bfd *abfd, asection *after_sec)
{
  asection * msec;

  msec = after_sec != ((void*)0) ? after_sec->next : abfd->sections;

  while (msec)
    {
      if (strcmp (msec->name, DWARF2_DEBUG_INFO) == 0)
 return msec;

      if (CONST_STRNEQ (msec->name, GNU_LINKONCE_INFO))
 return msec;

      msec = msec->next;
    }

  return ((void*)0);
}
