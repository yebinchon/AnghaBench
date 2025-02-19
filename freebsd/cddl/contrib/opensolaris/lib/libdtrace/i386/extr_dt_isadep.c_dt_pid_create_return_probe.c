
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef int ulong_t ;
typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint16_t ;
struct ps_prochandle {int dummy; } ;
typedef int pid_t ;
typedef scalar_t__ int8_t ;
typedef scalar_t__ int32_t ;
struct TYPE_15__ {uintptr_t ftps_pc; size_t ftps_size; scalar_t__ ftps_noffs; int* ftps_offs; int ftps_type; } ;
typedef TYPE_1__ fasttrap_probe_spec_t ;
struct TYPE_16__ {int dt_ftfd; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_17__ {int st_size; scalar_t__ st_value; } ;
struct TYPE_14__ {char pr_dmodel; int pr_pid; } ;
typedef TYPE_3__ GElf_Sym ;


 int DTFTP_RETURN ;
 scalar_t__ DT_ISJ32 (scalar_t__) ;
 scalar_t__ DT_ISJ8 (scalar_t__) ;
 scalar_t__ DT_JMP32 ;
 scalar_t__ DT_JMP8 ;
 scalar_t__ DT_LEAVE ;
 scalar_t__ DT_MOVL_EBP_ESP ;
 scalar_t__ DT_POPL_EBP ;
 int DT_PROC_ERR ;
 scalar_t__ DT_REP ;
 scalar_t__ DT_RET ;
 scalar_t__ DT_RET16 ;
 int FASTTRAPIOC_MAKEPROBE ;
 int Pread (struct ps_prochandle*,scalar_t__*,int,scalar_t__) ;
 TYPE_13__* Pstatus (struct ps_prochandle*) ;
 scalar_t__* calloc (int,int) ;
 int dt_dprintf (char*,...) ;
 int dt_instr_size (scalar_t__*,TYPE_2__*,int ,scalar_t__,char) ;
 scalar_t__ dt_pid_has_jump_table (struct ps_prochandle*,TYPE_2__*,scalar_t__*,TYPE_1__*,TYPE_3__ const*) ;
 int dt_set_errno (TYPE_2__*,int ) ;
 int errno ;
 int free (scalar_t__*) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 char proc_getmodel (struct ps_prochandle*) ;
 int proc_getpid (struct ps_prochandle*) ;
 int strerror (int ) ;

int
dt_pid_create_return_probe(struct ps_prochandle *P, dtrace_hdl_t *dtp,
    fasttrap_probe_spec_t *ftp, const GElf_Sym *symp, uint64_t *stret)
{
 uint8_t *text;
 ulong_t i, end;
 int size;




 pid_t pid = proc_getpid(P);
 char dmodel = proc_getmodel(P);






 if ((text = calloc(1, symp->st_size + 4)) == ((void*)0)) {
  dt_dprintf("mr sparkle: malloc() failed\n");
  return (DT_PROC_ERR);
 }

 if (Pread(P, text, symp->st_size, symp->st_value) != symp->st_size) {
  dt_dprintf("mr sparkle: Pread() failed\n");
  free(text);
  return (DT_PROC_ERR);
 }

 ftp->ftps_type = DTFTP_RETURN;
 ftp->ftps_pc = (uintptr_t)symp->st_value;
 ftp->ftps_size = (size_t)symp->st_size;
 ftp->ftps_noffs = 0;
 if (dt_pid_has_jump_table(P, dtp, text, ftp, symp)) {
  for (i = 0, end = ftp->ftps_size; i < end; i += size) {
   size = dt_instr_size(&text[i], dtp, pid,
       symp->st_value + i, dmodel);


   if (size <= 0)
    break;

   if (text[i] == DT_LEAVE && text[i + 1] == DT_RET) {
    dt_dprintf("leave/ret at %lx\n", i + 1);
    ftp->ftps_offs[ftp->ftps_noffs++] = i + 1;
    size = 2;
   } else if (text[i] == DT_LEAVE &&
       text[i + 1] == DT_REP && text[i + 2] == DT_RET) {
    dt_dprintf("leave/rep ret at %lx\n", i + 1);
    ftp->ftps_offs[ftp->ftps_noffs++] = i + 1;
    size = 3;
   } else if (*(uint16_t *)&text[i] == DT_MOVL_EBP_ESP &&
       text[i + 2] == DT_POPL_EBP &&
       text[i + 3] == DT_RET) {
    dt_dprintf("movl/popl/ret at %lx\n", i + 3);
    ftp->ftps_offs[ftp->ftps_noffs++] = i + 3;
    size = 4;
   } else if (*(uint16_t *)&text[i] == DT_MOVL_EBP_ESP &&
       text[i + 2] == DT_POPL_EBP &&
       text[i + 3] == DT_REP &&
       text[i + 4] == DT_RET) {
    dt_dprintf("movl/popl/rep ret at %lx\n", i + 3);
    ftp->ftps_offs[ftp->ftps_noffs++] = i + 3;
    size = 5;
   }
  }
 } else {
  for (i = 0, end = ftp->ftps_size; i < end; i += size) {
   size = dt_instr_size(&text[i], dtp, pid,
       symp->st_value + i, dmodel);


   if (size <= 0)
    break;


   if (size == 1 && text[i] == DT_RET)
    goto is_ret;


   if (size == 2 && text[i] == DT_REP &&
       text[i + 1] == DT_RET)
    goto is_ret;


   if (size == 3 && text[i] == DT_RET16)
    goto is_ret;


   if (size == 4 && text[i] == DT_REP &&
       text[i + 1] == DT_RET16)
    goto is_ret;


   if (size == 5 && text[i] == DT_JMP32 && symp->st_size <=
       (uintptr_t)(i + size + *(int32_t *)&text[i + 1]))
    goto is_ret;


   if (size == 2 && text[i] == DT_JMP8 && symp->st_size <=
       (uintptr_t)(i + size + *(int8_t *)&text[i + 1]))
    goto is_ret;


   if (size == 6 && DT_ISJ32(*(uint16_t *)&text[i]) &&
       symp->st_size <=
       (uintptr_t)(i + size + *(int32_t *)&text[i + 2]))
    goto is_ret;


   if (size == 2 && DT_ISJ8(text[i]) && symp->st_size <=
       (uintptr_t)(i + size + *(int8_t *)&text[i + 1]))
    goto is_ret;

   continue;
is_ret:
   dt_dprintf("return at offset %lx\n", i);
   ftp->ftps_offs[ftp->ftps_noffs++] = i;
  }
 }

 free(text);
 if (ftp->ftps_noffs > 0) {
  if (ioctl(dtp->dt_ftfd, FASTTRAPIOC_MAKEPROBE, ftp) != 0) {
   dt_dprintf("fasttrap probe creation ioctl failed: %s\n",
       strerror(errno));
   return (dt_set_errno(dtp, errno));
  }
 }

 return (ftp->ftps_noffs);
}
