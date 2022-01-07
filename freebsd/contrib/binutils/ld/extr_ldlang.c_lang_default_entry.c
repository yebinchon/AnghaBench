
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* entry_symbol_default ;

void
lang_default_entry (const char *name)
{
  entry_symbol_default = name;
}
