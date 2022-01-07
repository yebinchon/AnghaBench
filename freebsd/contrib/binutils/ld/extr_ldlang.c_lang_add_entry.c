
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ bfd_boolean ;
struct TYPE_2__ {char const* name; } ;


 scalar_t__ entry_from_cmdline ;
 TYPE_1__ entry_symbol ;

void
lang_add_entry (const char *name, bfd_boolean cmdline)
{
  if (entry_symbol.name == ((void*)0)
      || cmdline
      || ! entry_from_cmdline)
    {
      entry_symbol.name = name;
      entry_from_cmdline = cmdline;
    }
}
