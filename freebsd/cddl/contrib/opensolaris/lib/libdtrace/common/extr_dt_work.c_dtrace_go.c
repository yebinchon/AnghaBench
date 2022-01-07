
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ n_matched; void* dof; } ;
struct TYPE_12__ {int dt_active; int dt_errno; TYPE_2__ dt_beganon; int * dt_vector; int * dt_errprog; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef TYPE_2__ dtrace_enable_io_t ;


 int DTRACEIOC_ENABLE ;
 int DTRACEIOC_GO ;
 int E2BIG ;
 int EACCES ;
 int EALREADY ;
 int EDT_BUFTOOSMALL ;
 int EDT_DESTRUCTIVE ;
 int EDT_ENDTOOBIG ;
 int EDT_ISANON ;
 int EDT_NOANON ;
 int EINVAL ;
 int ENOENT ;
 int ENOSPC ;
 int ENOTTY ;
 int dt_aggregate_go (TYPE_1__*) ;
 int dt_ioctl (TYPE_1__*,int ,TYPE_2__*) ;
 int dt_options_load (TYPE_1__*) ;
 int dt_set_errno (TYPE_1__*,int) ;
 int dtrace_dof_destroy (TYPE_1__*,void*) ;
 void* dtrace_getopt_dof (TYPE_1__*) ;
 int dtrace_program_exec (TYPE_1__*,int *,int *) ;
 int errno ;

int
dtrace_go(dtrace_hdl_t *dtp)
{
 dtrace_enable_io_t args;
 void *dof;
 int error, r;

 if (dtp->dt_active)
  return (dt_set_errno(dtp, EINVAL));
 if (dtp->dt_errprog != ((void*)0) &&
     dtrace_program_exec(dtp, dtp->dt_errprog, ((void*)0)) == -1 && (
     dtp->dt_errno != ENOTTY || dtp->dt_vector == ((void*)0)))
  return (-1);

 if ((dof = dtrace_getopt_dof(dtp)) == ((void*)0))
  return (-1);

 args.dof = dof;
 args.n_matched = 0;
 r = dt_ioctl(dtp, DTRACEIOC_ENABLE, &args);
 error = errno;
 dtrace_dof_destroy(dtp, dof);

 if (r == -1 && (error != ENOTTY || dtp->dt_vector == ((void*)0)))
  return (dt_set_errno(dtp, error));

 if (dt_ioctl(dtp, DTRACEIOC_GO, &dtp->dt_beganon) == -1) {
  if (errno == EACCES)
   return (dt_set_errno(dtp, EDT_DESTRUCTIVE));

  if (errno == EALREADY)
   return (dt_set_errno(dtp, EDT_ISANON));

  if (errno == ENOENT)
   return (dt_set_errno(dtp, EDT_NOANON));

  if (errno == E2BIG)
   return (dt_set_errno(dtp, EDT_ENDTOOBIG));

  if (errno == ENOSPC)
   return (dt_set_errno(dtp, EDT_BUFTOOSMALL));

  return (dt_set_errno(dtp, errno));
 }

 dtp->dt_active = 1;

 if (dt_options_load(dtp) == -1)
  return (dt_set_errno(dtp, errno));

 return (dt_aggregate_go(dtp));
}
