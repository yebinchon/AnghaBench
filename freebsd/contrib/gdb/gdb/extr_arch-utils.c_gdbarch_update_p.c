
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;
struct TYPE_2__ {int printable_name; } ;


 struct gdbarch* current_gdbarch ;
 int deprecated_current_gdbarch_select_hack (struct gdbarch*) ;
 int fprintf_unfiltered (int ,char*,...) ;
 int gdb_stdlog ;
 TYPE_1__* gdbarch_bfd_arch_info (struct gdbarch*) ;
 scalar_t__ gdbarch_debug ;
 struct gdbarch* gdbarch_find_by_info (struct gdbarch_info) ;

int
gdbarch_update_p (struct gdbarch_info info)
{
  struct gdbarch *new_gdbarch = gdbarch_find_by_info (info);


  if (new_gdbarch == ((void*)0))
    {
      if (gdbarch_debug)
 fprintf_unfiltered (gdb_stdlog, "gdbarch_update_p: "
       "Architecture not found\n");
      return 0;
    }



  if (new_gdbarch == current_gdbarch)
    {
      if (gdbarch_debug)
 fprintf_unfiltered (gdb_stdlog, "gdbarch_update_p: "
       "Architecture 0x%08lx (%s) unchanged\n",
       (long) new_gdbarch,
       gdbarch_bfd_arch_info (new_gdbarch)->printable_name);
      return 1;
    }


  if (gdbarch_debug)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_update_p: "
   "New architecture 0x%08lx (%s) selected\n",
   (long) new_gdbarch,
   gdbarch_bfd_arch_info (new_gdbarch)->printable_name);
  deprecated_current_gdbarch_select_hack (new_gdbarch);

  return 1;
}
