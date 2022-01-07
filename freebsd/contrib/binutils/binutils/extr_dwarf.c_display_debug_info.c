
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_section {int dummy; } ;


 int process_debug_info (struct dwarf_section*,void*,int ) ;

__attribute__((used)) static int
display_debug_info (struct dwarf_section *section, void *file)
{
  return process_debug_info (section, file, 0);
}
