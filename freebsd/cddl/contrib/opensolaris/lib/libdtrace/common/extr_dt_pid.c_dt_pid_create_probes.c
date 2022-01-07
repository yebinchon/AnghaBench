
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
typedef int provname ;
typedef int pid_t ;
struct TYPE_20__ {int dtpd_provider; } ;
typedef TYPE_1__ dtrace_probedesc_t ;
struct TYPE_21__ {int dt_ftfd; scalar_t__ dt_fterr; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_22__ {int dpr_lock; scalar_t__ dpr_usdt; } ;
typedef TYPE_3__ dt_proc_t ;
typedef int dt_pcb_t ;


 scalar_t__ B_TRUE ;
 int DTRACEIOC_ENABLE ;
 int DTRACE_PROVNAMELEN ;
 int D_PROC_GRAB ;
 int D_PROC_NODEV ;
 scalar_t__ ENOENT ;
 int PGRAB_FORCE ;
 int PGRAB_RDONLY ;
 int assert (int ) ;
 int dt_ioctl (TYPE_2__*,int ,int *) ;
 int dt_pid_create_pid_probes (TYPE_1__*,TYPE_2__*,int *,TYPE_3__*) ;
 int dt_pid_create_usdt_probes (TYPE_1__*,TYPE_2__*,int *,TYPE_3__*) ;
 int dt_pid_error (TYPE_2__*,int *,int *,int *,int ,char*,...) ;
 int dt_pid_get_pid (TYPE_1__*,TYPE_2__*,int *,int *) ;
 struct ps_prochandle* dt_proc_grab (TYPE_2__*,int,int,int) ;
 TYPE_3__* dt_proc_lookup (TYPE_2__*,struct ps_prochandle*,int ) ;
 int dt_proc_release (TYPE_2__*,struct ps_prochandle*) ;
 scalar_t__ gmatch (char*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (char*,int ) ;
 int strerror (scalar_t__) ;

int
dt_pid_create_probes(dtrace_probedesc_t *pdp, dtrace_hdl_t *dtp, dt_pcb_t *pcb)
{
 char provname[DTRACE_PROVNAMELEN];
 struct ps_prochandle *P;
 dt_proc_t *dpr;
 pid_t pid;
 int err = 0;

 assert(pcb != ((void*)0));

 if ((pid = dt_pid_get_pid(pdp, dtp, pcb, ((void*)0))) == -1)
  return (-1);

 if (dtp->dt_ftfd == -1) {
  if (dtp->dt_fterr == ENOENT) {
   (void) dt_pid_error(dtp, pcb, ((void*)0), ((void*)0), D_PROC_NODEV,
       "pid provider is not installed on this system");
  } else {
   (void) dt_pid_error(dtp, pcb, ((void*)0), ((void*)0), D_PROC_NODEV,
       "pid provider is not available: %s",
       strerror(dtp->dt_fterr));
  }

  return (-1);
 }

 (void) snprintf(provname, sizeof (provname), "pid%d", (int)pid);

 if (gmatch(provname, pdp->dtpd_provider) != 0) {



  if ((P = dt_proc_grab(dtp, pid, PGRAB_RDONLY | PGRAB_FORCE,
      0)) == ((void*)0))

  {
   (void) dt_pid_error(dtp, pcb, ((void*)0), ((void*)0), D_PROC_GRAB,
       "failed to grab process %d", (int)pid);
   return (-1);
  }

  dpr = dt_proc_lookup(dtp, P, 0);
  assert(dpr != ((void*)0));
  (void) pthread_mutex_lock(&dpr->dpr_lock);

  if ((err = dt_pid_create_pid_probes(pdp, dtp, pcb, dpr)) == 0) {




   (void) dt_ioctl(dtp, DTRACEIOC_ENABLE, ((void*)0));
  }

  (void) pthread_mutex_unlock(&dpr->dpr_lock);
  dt_proc_release(dtp, P);
 }




 if (strcmp(provname, pdp->dtpd_provider) != 0) {
  if ((P = dt_proc_grab(dtp, pid, 0, 1)) == ((void*)0)) {
   (void) dt_pid_error(dtp, pcb, ((void*)0), ((void*)0), D_PROC_GRAB,
       "failed to grab process %d", (int)pid);
   return (-1);
  }

  dpr = dt_proc_lookup(dtp, P, 0);
  assert(dpr != ((void*)0));
  (void) pthread_mutex_lock(&dpr->dpr_lock);

  if (!dpr->dpr_usdt) {
   err = dt_pid_create_usdt_probes(pdp, dtp, pcb, dpr);
   dpr->dpr_usdt = B_TRUE;
  }

  (void) pthread_mutex_unlock(&dpr->dpr_lock);
  dt_proc_release(dtp, P);
 }

 return (err ? -1 : 0);
}
