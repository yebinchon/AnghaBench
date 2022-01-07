
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* smash_text_address ) (int ) ;} ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (int ) ;

CORE_ADDR
gdbarch_smash_text_address (struct gdbarch *gdbarch, CORE_ADDR addr)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->smash_text_address != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_smash_text_address called\n");
  return gdbarch->smash_text_address (addr);
}
