
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bfd_name; scalar_t__ name; } ;
typedef TYPE_1__ CGEN_MACH ;


 int abort () ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static const CGEN_MACH *
lookup_mach_via_bfd_name (const CGEN_MACH *table, const char *name)
{
  while (table->name)
    {
      if (strcmp (name, table->bfd_name) == 0)
 return table;
      ++table;
    }
  abort ();
}
