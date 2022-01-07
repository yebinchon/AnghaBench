
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {struct section_table* to_sections_end; struct section_table* to_sections; } ;
struct section_table {int * bfd; TYPE_1__* the_bfd_section; int endaddr; int addr; } ;
typedef int bfd ;
struct TYPE_2__ {int filepos; } ;


 int TARGET_ADDR_BIT ;
 int bfd_get_filename (int *) ;
 int bfd_get_start_address (int *) ;
 int bfd_get_target (int *) ;
 int bfd_section_name (int *,TYPE_1__*) ;
 int * exec_bfd ;
 int gdb_stdout ;
 scalar_t__ info_verbose ;
 int local_hex_string_custom (int ,char*) ;
 int print_address_numeric (int ,int,int ) ;
 int printf_filtered (char*,...) ;
 int wrap_here (char*) ;

void
print_section_info (struct target_ops *t, bfd *abfd)
{
  struct section_table *p;

  char *fmt = TARGET_ADDR_BIT <= 32 ? "08l" : "016l";

  printf_filtered ("\t`%s', ", bfd_get_filename (abfd));
  wrap_here ("        ");
  printf_filtered ("file type %s.\n", bfd_get_target (abfd));
  if (abfd == exec_bfd)
    {
      printf_filtered ("\tEntry point: ");
      print_address_numeric (bfd_get_start_address (abfd), 1, gdb_stdout);
      printf_filtered ("\n");
    }
  for (p = t->to_sections; p < t->to_sections_end; p++)
    {
      printf_filtered ("\t%s", local_hex_string_custom (p->addr, fmt));
      printf_filtered (" - %s", local_hex_string_custom (p->endaddr, fmt));






      if (info_verbose)
 printf_filtered (" @ %s",
    local_hex_string_custom (p->the_bfd_section->filepos, "08l"));
      printf_filtered (" is %s", bfd_section_name (p->bfd, p->the_bfd_section));
      if (p->bfd != abfd)
 {
   printf_filtered (" in %s", bfd_get_filename (p->bfd));
 }
      printf_filtered ("\n");
    }
}
