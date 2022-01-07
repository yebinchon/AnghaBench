
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int dir_path; } ;
struct TYPE_8__ {int dt_cflags; TYPE_2__ dt_lib_path; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef TYPE_2__ dt_dirpath_t ;


 int DTRACE_C_NOLIBS ;
 TYPE_2__* dt_list_next (TYPE_2__*) ;
 scalar_t__ dt_load_libs_dir (TYPE_1__*,int ) ;
 scalar_t__ dt_load_libs_sort (TYPE_1__*) ;

__attribute__((used)) static int
dt_load_libs(dtrace_hdl_t *dtp)
{
 dt_dirpath_t *dirp;

 if (dtp->dt_cflags & DTRACE_C_NOLIBS)
  return (0);

 dtp->dt_cflags |= DTRACE_C_NOLIBS;
 for (dirp = dt_list_next(dt_list_next(&dtp->dt_lib_path));
     dirp != ((void*)0); dirp = dt_list_next(dirp)) {
  if (dt_load_libs_dir(dtp, dirp->dir_path) != 0) {
   dtp->dt_cflags &= ~DTRACE_C_NOLIBS;
   return (-1);
  }
 }


 dirp = dt_list_next(&dtp->dt_lib_path);
 if (dt_load_libs_dir(dtp, dirp->dir_path) != 0) {
  dtp->dt_cflags &= ~DTRACE_C_NOLIBS;
  return (-1);
 }

 if (dt_load_libs_sort(dtp) < 0)
  return (-1);

 return (0);
}
