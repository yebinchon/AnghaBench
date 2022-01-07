
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libunwind_descr {int accessors; int is_fpreg; int uw2gdb; int gdb2uw; } ;
struct gdbarch {int dummy; } ;


 int gdb_assert (int ) ;
 struct libunwind_descr* gdbarch_data (struct gdbarch*,int ) ;
 int libunwind_descr_handle ;
 struct libunwind_descr* libunwind_descr_init (struct gdbarch*) ;
 int set_gdbarch_data (struct gdbarch*,int ,struct libunwind_descr*) ;

void
libunwind_frame_set_descr (struct gdbarch *gdbarch, struct libunwind_descr *descr)
{
  struct libunwind_descr *arch_descr;

  gdb_assert (gdbarch != ((void*)0));

  arch_descr = gdbarch_data (gdbarch, libunwind_descr_handle);

  if (arch_descr == ((void*)0))
    {

      arch_descr = libunwind_descr_init (gdbarch);
      set_gdbarch_data (gdbarch, libunwind_descr_handle, arch_descr);
    }


  arch_descr->gdb2uw = descr->gdb2uw;
  arch_descr->uw2gdb = descr->uw2gdb;
  arch_descr->is_fpreg = descr->is_fpreg;
  arch_descr->accessors = descr->accessors;
}
