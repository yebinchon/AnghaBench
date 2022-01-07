
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dpi_matches; } ;
typedef TYPE_1__ dtrace_proginfo_t ;
typedef int dtrace_prog_t ;
typedef int dtrace_hdl_t ;
struct TYPE_7__ {scalar_t__ n_matched; void* dof; } ;
typedef TYPE_2__ dtrace_enable_io_t ;


 int DTRACEIOC_ENABLE ;
 int DTRACE_D_STRIP ;


 int EDT_DIFFAULT ;
 int EDT_DIFINVAL ;
 int EDT_DIFSIZE ;
 int EDT_ENABLING_ERR ;


 int dt_ioctl (int *,int ,TYPE_2__*) ;
 int dt_set_errno (int *,int) ;
 void* dtrace_dof_create (int *,int *,int ) ;
 int dtrace_dof_destroy (int *,void*) ;
 int dtrace_program_info (int *,int *,TYPE_1__*) ;
 int errno ;

int
dtrace_program_exec(dtrace_hdl_t *dtp, dtrace_prog_t *pgp,
    dtrace_proginfo_t *pip)
{
 dtrace_enable_io_t args;
 void *dof;
 int n, err;

 dtrace_program_info(dtp, pgp, pip);

 if ((dof = dtrace_dof_create(dtp, pgp, DTRACE_D_STRIP)) == ((void*)0))
  return (-1);

 args.dof = dof;
 args.n_matched = 0;
 n = dt_ioctl(dtp, DTRACEIOC_ENABLE, &args);
 dtrace_dof_destroy(dtp, dof);

 if (n == -1) {
  switch (errno) {
  case 128:
   err = EDT_DIFINVAL;
   break;
  case 129:
   err = EDT_DIFFAULT;
   break;
  case 131:
   err = EDT_DIFSIZE;
   break;
  case 130:
   err = EDT_ENABLING_ERR;
   break;
  default:
   err = errno;
  }

  return (dt_set_errno(dtp, err));
 }

 if (pip != ((void*)0))
  pip->dpi_matches += args.n_matched;

 return (0);
}
