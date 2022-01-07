
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int start_address; } ;
typedef TYPE_1__ bfd ;


 int BFD_IS_RELAXABLE ;
 int DYNAMIC ;
 int D_PAGED ;
 int EXEC_P ;
 int HAS_DEBUG ;
 int HAS_LINENO ;
 int HAS_LOAD_PAGE ;
 int HAS_LOCALS ;
 int HAS_RELOC ;
 int HAS_SYMS ;
 int PF (int ,char*) ;
 int WP_TEXT ;
 char* _ (char*) ;
 int bfd_get_arch (TYPE_1__*) ;
 int bfd_get_mach (TYPE_1__*) ;
 char* bfd_printable_arch_mach (int ,int ) ;
 int bfd_printf_vma (TYPE_1__*,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_bfd_header (bfd *abfd)
{
  char *comma = "";

  printf (_("architecture: %s, "),
   bfd_printable_arch_mach (bfd_get_arch (abfd),
       bfd_get_mach (abfd)));
  printf (_("flags 0x%08x:\n"), abfd->flags);


  if (abfd->flags & HAS_RELOC) {printf("%s%s", comma, "HAS_RELOC"); comma=", ";};
  if (abfd->flags & EXEC_P) {printf("%s%s", comma, "EXEC_P"); comma=", ";};
  if (abfd->flags & HAS_LINENO) {printf("%s%s", comma, "HAS_LINENO"); comma=", ";};
  if (abfd->flags & HAS_DEBUG) {printf("%s%s", comma, "HAS_DEBUG"); comma=", ";};
  if (abfd->flags & HAS_SYMS) {printf("%s%s", comma, "HAS_SYMS"); comma=", ";};
  if (abfd->flags & HAS_LOCALS) {printf("%s%s", comma, "HAS_LOCALS"); comma=", ";};
  if (abfd->flags & DYNAMIC) {printf("%s%s", comma, "DYNAMIC"); comma=", ";};
  if (abfd->flags & WP_TEXT) {printf("%s%s", comma, "WP_TEXT"); comma=", ";};
  if (abfd->flags & D_PAGED) {printf("%s%s", comma, "D_PAGED"); comma=", ";};
  if (abfd->flags & BFD_IS_RELAXABLE) {printf("%s%s", comma, "BFD_IS_RELAXABLE"); comma=", ";};
  if (abfd->flags & HAS_LOAD_PAGE) {printf("%s%s", comma, "HAS_LOAD_PAGE"); comma=", ";};
  printf (_("\nstart address 0x"));
  bfd_printf_vma (abfd, abfd->start_address);
  printf ("\n");
}
