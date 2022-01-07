
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
typedef int dt_list_t ;
struct TYPE_7__ {struct TYPE_7__* dtld_libpath; int * dtld_library; } ;
typedef TYPE_1__ dt_lib_depend_t ;


 int EDT_NOMEM ;
 int EINVAL ;
 int MAXPATHLEN ;
 int assert (int ) ;
 TYPE_1__* dt_alloc (int *,int ) ;
 int dt_free (int *,TYPE_1__*) ;
 int dt_list_append (int *,TYPE_1__*) ;
 int dt_set_errno (int *,int ) ;
 TYPE_1__* dt_zalloc (int *,int) ;
 int * strdup (char const*) ;
 int strlcpy (TYPE_1__*,char const*,int) ;
 char* strrchr (char const*,char) ;

int
dt_lib_depend_add(dtrace_hdl_t *dtp, dt_list_t *dlp, const char *arg)
{
 dt_lib_depend_t *dld;
 const char *end;

 assert(arg != ((void*)0));

 if ((end = strrchr(arg, '/')) == ((void*)0))
  return (dt_set_errno(dtp, EINVAL));

 if ((dld = dt_zalloc(dtp, sizeof (dt_lib_depend_t))) == ((void*)0))
  return (-1);

 if ((dld->dtld_libpath = dt_alloc(dtp, MAXPATHLEN)) == ((void*)0)) {
  dt_free(dtp, dld);
  return (-1);
 }

 (void) strlcpy(dld->dtld_libpath, arg, end - arg + 2);
 if ((dld->dtld_library = strdup(arg)) == ((void*)0)) {
  dt_free(dtp, dld->dtld_libpath);
  dt_free(dtp, dld);
  return (dt_set_errno(dtp, EDT_NOMEM));
 }

 dt_list_append(dlp, dld);
 return (0);
}
