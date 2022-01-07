
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_3__ {char* dtpd_provider; } ;
typedef TYPE_1__ dtrace_probedesc_t ;
typedef int dtrace_hdl_t ;
typedef int dt_proc_t ;
typedef int dt_pcb_t ;


 int D_PROC_BADPID ;
 int D_PROC_BADPROV ;
 int dt_pid_error (int *,int *,int *,int *,int ,char*,char*) ;
 scalar_t__ errno ;
 int isdigit (char) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static pid_t
dt_pid_get_pid(dtrace_probedesc_t *pdp, dtrace_hdl_t *dtp, dt_pcb_t *pcb,
    dt_proc_t *dpr)
{
 pid_t pid;
 char *c, *last = ((void*)0), *end;

 for (c = &pdp->dtpd_provider[0]; *c != '\0'; c++) {
  if (!isdigit(*c))
   last = c;
 }

 if (last == ((void*)0) || (*(++last) == '\0')) {
  (void) dt_pid_error(dtp, pcb, dpr, ((void*)0), D_PROC_BADPROV,
      "'%s' is not a valid provider", pdp->dtpd_provider);
  return (-1);
 }

 errno = 0;
 pid = strtol(last, &end, 10);

 if (errno != 0 || end == last || end[0] != '\0' || pid <= 0) {
  (void) dt_pid_error(dtp, pcb, dpr, ((void*)0), D_PROC_BADPID,
      "'%s' does not contain a valid pid", pdp->dtpd_provider);
  return (-1);
 }

 return (pid);
}
