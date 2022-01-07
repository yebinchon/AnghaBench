
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
typedef int bfd ;


 int deprecated_current_gdbarch_select_hack (struct gdbarch*) ;
 int error (char*) ;
 struct gdbarch* gdbarch_from_bfd (int *) ;

void
set_gdbarch_from_file (bfd *abfd)
{
  struct gdbarch *gdbarch;

  gdbarch = gdbarch_from_bfd (abfd);
  if (gdbarch == ((void*)0))
    error ("Architecture of file not recognized.\n");
  deprecated_current_gdbarch_select_hack (gdbarch);
}
