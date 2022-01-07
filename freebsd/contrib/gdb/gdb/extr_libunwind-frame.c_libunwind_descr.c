
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libunwind_descr {int dummy; } ;
struct gdbarch {int dummy; } ;


 struct libunwind_descr* gdbarch_data (struct gdbarch*,int ) ;
 int libunwind_descr_handle ;

__attribute__((used)) static struct libunwind_descr *
libunwind_descr (struct gdbarch *gdbarch)
{
  return gdbarch_data (gdbarch, libunwind_descr_handle);
}
