
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ulong_t ;
typedef int uint8_t ;
struct ps_prochandle {int dummy; } ;
typedef int pid_t ;
struct TYPE_6__ {int ftps_size; int ftps_func; } ;
typedef TYPE_1__ fasttrap_probe_spec_t ;
typedef int dtrace_hdl_t ;
struct TYPE_8__ {char pr_dmodel; int pr_pid; } ;
struct TYPE_7__ {scalar_t__ st_value; } ;
typedef TYPE_2__ GElf_Sym ;


 int DT_MODRM_REG (int) ;
 char PR_MODEL_LP64 ;
 TYPE_5__* Pstatus (struct ps_prochandle*) ;
 int dt_dprintf (char*,int,...) ;
 int dt_instr_size (int*,int *,int ,scalar_t__,char) ;
 char proc_getmodel (struct ps_prochandle*) ;
 int proc_getpid (struct ps_prochandle*) ;

__attribute__((used)) static int
dt_pid_has_jump_table(struct ps_prochandle *P, dtrace_hdl_t *dtp,
    uint8_t *text, fasttrap_probe_spec_t *ftp, const GElf_Sym *symp)
{
 ulong_t i;
 int size;




 pid_t pid = proc_getpid(P);
 char dmodel = proc_getmodel(P);







 for (i = 0; i < ftp->ftps_size; i += size) {
  size = dt_instr_size(&text[i], dtp, pid, symp->st_value + i,
      dmodel);




  if (size <= 0) {
   dt_dprintf("error at %#lx (assuming jump table)\n", i);
   return (1);
  }
 }

 return (0);
}
