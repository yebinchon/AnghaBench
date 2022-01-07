
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dt_lib_path; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_7__ {char* dir_path; } ;
typedef TYPE_2__ dt_dirpath_t ;


 int EDT_BADOPTVAL ;
 int EDT_NOMEM ;
 TYPE_2__* dt_list_next (int *) ;
 int dt_set_errno (TYPE_1__*,int ) ;
 int free (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
dt_opt_syslibdir(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 dt_dirpath_t *dp = dt_list_next(&dtp->dt_lib_path);
 char *path;

 if (arg == ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if ((path = strdup(arg)) == ((void*)0))
  return (dt_set_errno(dtp, EDT_NOMEM));

 free(dp->dir_path);
 dp->dir_path = path;

 return (0);
}
