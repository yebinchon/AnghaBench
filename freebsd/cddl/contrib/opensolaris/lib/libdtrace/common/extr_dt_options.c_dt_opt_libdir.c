
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dt_lib_path; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_9__ {int * dir_path; } ;
typedef TYPE_2__ dt_dirpath_t ;


 int EDT_BADOPTVAL ;
 int EDT_NOMEM ;
 int dt_list_append (int *,TYPE_2__*) ;
 int dt_set_errno (TYPE_1__*,int ) ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int * strdup (char const*) ;

__attribute__((used)) static int
dt_opt_libdir(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 dt_dirpath_t *dp;

 if (arg == ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if ((dp = malloc(sizeof (dt_dirpath_t))) == ((void*)0) ||
     (dp->dir_path = strdup(arg)) == ((void*)0)) {
  free(dp);
  return (dt_set_errno(dtp, EDT_NOMEM));
 }

 dt_list_append(&dtp->dt_lib_path, dp);
 return (0);
}
