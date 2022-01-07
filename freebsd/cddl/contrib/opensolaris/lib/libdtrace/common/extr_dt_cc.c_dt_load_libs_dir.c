
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct dirent {char* d_name; } ;
typedef int fname ;
struct TYPE_12__ {char* dtld_library; } ;
struct TYPE_11__ {char* dt_filetag; scalar_t__ dt_errno; scalar_t__ dt_errtag; TYPE_2__ dt_lib_dep; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef TYPE_2__ dt_lib_depend_t ;
typedef int FILE ;
typedef int DIR ;


 int DTRACE_C_CTL ;
 int DTRACE_C_EMPTY ;
 int DTRACE_PROBESPEC_NAME ;
 int DT_CTX_DPROG ;
 int D_PRAGMA_DEPEND ;
 scalar_t__ EDT_COMPILER ;
 int PATH_MAX ;
 int assert (int ) ;
 int closedir (int *) ;
 void* dt_compile (TYPE_1__*,int ,int ,int *,int,int ,int *,int *,int *) ;
 int dt_dprintf (char*,char const*,char*) ;
 scalar_t__ dt_errtag (int ) ;
 scalar_t__ dt_lib_depend_add (TYPE_1__*,TYPE_2__*,char*) ;
 TYPE_2__* dt_list_next (TYPE_2__*) ;
 char* dtrace_errmsg (TYPE_1__*,int ) ;
 int dtrace_errno (TYPE_1__*) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strerror (int ) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
dt_load_libs_dir(dtrace_hdl_t *dtp, const char *path)
{
 struct dirent *dp;
 const char *p, *end;
 DIR *dirp;

 char fname[PATH_MAX];
 FILE *fp;
 void *rv;
 dt_lib_depend_t *dld;

 if ((dirp = opendir(path)) == ((void*)0)) {
  dt_dprintf("skipping lib dir %s: %s\n", path, strerror(errno));
  return (0);
 }


 while ((dp = readdir(dirp)) != ((void*)0)) {
  if ((p = strrchr(dp->d_name, '.')) == ((void*)0) || strcmp(p, ".d"))
   continue;

  (void) snprintf(fname, sizeof (fname),
      "%s/%s", path, dp->d_name);

  if ((fp = fopen(fname, "r")) == ((void*)0)) {
   dt_dprintf("skipping library %s: %s\n",
       fname, strerror(errno));
   continue;
  }




  for (dld = dt_list_next(&dtp->dt_lib_dep); dld != ((void*)0);
      dld = dt_list_next(dld)) {
   end = strrchr(dld->dtld_library, '/');

   assert(end != ((void*)0));
   if (strcmp(end + 1, dp->d_name) == 0)
    break;
  }

  if (dld != ((void*)0)) {
   dt_dprintf("skipping library %s, already processed "
       "library with the same name: %s", dp->d_name,
       dld->dtld_library);
   (void) fclose(fp);
   continue;
  }

  dtp->dt_filetag = fname;
  if (dt_lib_depend_add(dtp, &dtp->dt_lib_dep, fname) != 0) {
   (void) fclose(fp);
   return (-1);
  }

  rv = dt_compile(dtp, DT_CTX_DPROG,
      DTRACE_PROBESPEC_NAME, ((void*)0),
      DTRACE_C_EMPTY | DTRACE_C_CTL, 0, ((void*)0), fp, ((void*)0));

  if (rv != ((void*)0) && dtp->dt_errno &&
      (dtp->dt_errno != EDT_COMPILER ||
      dtp->dt_errtag != dt_errtag(D_PRAGMA_DEPEND))) {
   (void) fclose(fp);
   return (-1);
  }

  if (dtp->dt_errno)
   dt_dprintf("error parsing library %s: %s\n",
       fname, dtrace_errmsg(dtp, dtrace_errno(dtp)));

  (void) fclose(fp);
  dtp->dt_filetag = ((void*)0);
 }

 (void) closedir(dirp);

 return (0);
}
