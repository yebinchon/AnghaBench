
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int dtrace_prog_t ;
struct TYPE_13__ {int dtld_loaded; int * dtld_library; } ;
struct TYPE_12__ {scalar_t__ dt_errno; scalar_t__ dt_errtag; int * dt_filetag; TYPE_2__ dt_lib_dep_sorted; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef TYPE_2__ dt_lib_depend_t ;
typedef int FILE ;


 int B_TRUE ;
 int DTRACE_C_EMPTY ;
 int D_PRAGMA_DEPEND ;
 scalar_t__ EDT_COMPILER ;
 int dt_dprintf (char*,int *,int ) ;
 scalar_t__ dt_errtag (int ) ;
 int dt_lib_depend_free (TYPE_1__*) ;
 int dt_lib_depend_sort (TYPE_1__*) ;
 TYPE_2__* dt_list_next (TYPE_2__*) ;
 int dt_program_destroy (TYPE_1__*,int *) ;
 int dtrace_errmsg (TYPE_1__*,int ) ;
 int dtrace_errno (TYPE_1__*) ;
 int * dtrace_program_fcompile (TYPE_1__*,int *,int ,int ,int *) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (int *,char*) ;
 int strerror (int ) ;

__attribute__((used)) static int
dt_load_libs_sort(dtrace_hdl_t *dtp)
{
 dtrace_prog_t *pgp;
 FILE *fp;
 dt_lib_depend_t *dld;






 if (dt_lib_depend_sort(dtp) == -1)
  goto err;

 for (dld = dt_list_next(&dtp->dt_lib_dep_sorted); dld != ((void*)0);
     dld = dt_list_next(dld)) {

  if ((fp = fopen(dld->dtld_library, "r")) == ((void*)0)) {
   dt_dprintf("skipping library %s: %s\n",
       dld->dtld_library, strerror(errno));
   continue;
  }

  dtp->dt_filetag = dld->dtld_library;
  pgp = dtrace_program_fcompile(dtp, fp, DTRACE_C_EMPTY, 0, ((void*)0));
  (void) fclose(fp);
  dtp->dt_filetag = ((void*)0);

  if (pgp == ((void*)0) && (dtp->dt_errno != EDT_COMPILER ||
      dtp->dt_errtag != dt_errtag(D_PRAGMA_DEPEND)))
   goto err;

  if (pgp == ((void*)0)) {
   dt_dprintf("skipping library %s: %s\n",
       dld->dtld_library,
       dtrace_errmsg(dtp, dtrace_errno(dtp)));
  } else {
   dld->dtld_loaded = B_TRUE;
   dt_program_destroy(dtp, pgp);
  }
 }

 dt_lib_depend_free(dtp);
 return (0);

err:
 dt_lib_depend_free(dtp);
 return (-1);
}
