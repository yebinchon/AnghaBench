
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ bfd ;


 int HAS_LOAD_PAGE ;
 char* _ (char*) ;
 int bfd_get_arch_size (TYPE_1__*) ;
 int bfd_map_over_sections (TYPE_1__*,int ,int *) ;
 int dump_section_header ;
 int printf (char*) ;
 scalar_t__ wide_output ;

__attribute__((used)) static void
dump_headers (bfd *abfd)
{
  printf (_("Sections:\n"));


  printf (_("Idx Name          Size      VMA       LMA       File off  Algn"));
  if (wide_output)
    printf (_("  Flags"));
  if (abfd->flags & HAS_LOAD_PAGE)
    printf (_("  Pg"));
  printf ("\n");

  bfd_map_over_sections (abfd, dump_section_header, ((void*)0));
}
