
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int libunwind_descr_handle ;
 int libunwind_descr_init ;
 int libunwind_initialized ;
 int libunwind_load () ;
 int register_gdbarch_data (int ) ;

void
_initialize_libunwind_frame (void)
{
  libunwind_descr_handle = register_gdbarch_data (libunwind_descr_init);

  libunwind_initialized = libunwind_load ();
}
