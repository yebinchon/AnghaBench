
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {char const* name_of_malloc; } ;



void
set_gdbarch_name_of_malloc (struct gdbarch *gdbarch,
                            const char * name_of_malloc)
{
  gdbarch->name_of_malloc = name_of_malloc;
}
