
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int * abfd; } ;
struct gdbarch {int dummy; } ;
typedef int bfd ;


 struct gdbarch* current_gdbarch ;
 struct gdbarch* gdbarch_find_by_info (struct gdbarch_info) ;
 int gdbarch_info_init (struct gdbarch_info*) ;

struct gdbarch *
gdbarch_from_bfd (bfd *abfd)
{
  struct gdbarch *old_gdbarch = current_gdbarch;
  struct gdbarch *new_gdbarch;
  struct gdbarch_info info;

  gdbarch_info_init (&info);
  info.abfd = abfd;
  return gdbarch_find_by_info (info);
}
