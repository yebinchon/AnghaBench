
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdbarch_info {scalar_t__ osabi; TYPE_1__* bfd_arch_info; } ;
struct gdbarch {int dummy; } ;
struct gdb_osabi_handler {scalar_t__ osabi; int (* init_osabi ) (struct gdbarch_info,struct gdbarch*) ;int arch_info; struct gdb_osabi_handler* next; } ;
struct TYPE_2__ {int printable_name; } ;


 scalar_t__ GDB_OSABI_UNKNOWN ;
 scalar_t__ can_run_code_for (TYPE_1__*,int ) ;
 struct gdb_osabi_handler* gdb_osabi_handler_list ;
 int gdbarch_osabi_name (scalar_t__) ;
 int stub1 (struct gdbarch_info,struct gdbarch*) ;
 int warning (char*,int ,int ) ;

void
gdbarch_init_osabi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdb_osabi_handler *handler;

  if (info.osabi == GDB_OSABI_UNKNOWN)
    {


      return;
    }

  for (handler = gdb_osabi_handler_list; handler != ((void*)0);
       handler = handler->next)
    {
      if (handler->osabi != info.osabi)
 continue;
      if (can_run_code_for (info.bfd_arch_info, handler->arch_info))
 {
   (*handler->init_osabi) (info, gdbarch);
   return;
 }
    }

  warning
    ("A handler for the OS ABI \"%s\" is not built into this configuration\n"
     "of GDB.  Attempting to continue with the default %s settings.\n",
     gdbarch_osabi_name (info.osabi),
     info.bfd_arch_info->printable_name);
}
