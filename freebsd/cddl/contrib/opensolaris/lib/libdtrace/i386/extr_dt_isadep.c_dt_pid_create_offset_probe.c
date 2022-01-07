
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef int ulong_t ;
typedef int uint8_t ;
struct ps_prochandle {int dummy; } ;
typedef int pid_t ;
struct TYPE_15__ {uintptr_t ftps_pc; size_t ftps_size; int ftps_noffs; int* ftps_offs; int ftps_func; int ftps_type; } ;
typedef TYPE_1__ fasttrap_probe_spec_t ;
struct TYPE_16__ {int dt_ftfd; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_17__ {scalar_t__ st_size; scalar_t__ st_value; } ;
struct TYPE_14__ {char pr_dmodel; int pr_pid; } ;
typedef TYPE_3__ GElf_Sym ;


 int DTFTP_OFFSETS ;
 int DT_PROC_ALIGN ;
 int DT_PROC_ERR ;
 int FASTTRAPIOC_MAKEPROBE ;
 scalar_t__ Pread (struct ps_prochandle*,int *,scalar_t__,scalar_t__) ;
 TYPE_13__* Pstatus (struct ps_prochandle*) ;
 int dt_dprintf (char*,...) ;
 int dt_instr_size (int *,TYPE_2__*,int ,scalar_t__,char) ;
 scalar_t__ dt_pid_has_jump_table (struct ps_prochandle*,TYPE_2__*,int *,TYPE_1__*,TYPE_3__ const*) ;
 int dt_set_errno (TYPE_2__*,int ) ;
 int errno ;
 int free (int *) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int * malloc (scalar_t__) ;
 char proc_getmodel (struct ps_prochandle*) ;
 int proc_getpid (struct ps_prochandle*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strerror (int ) ;

int
dt_pid_create_offset_probe(struct ps_prochandle *P, dtrace_hdl_t *dtp,
    fasttrap_probe_spec_t *ftp, const GElf_Sym *symp, ulong_t off)
{
 ftp->ftps_type = DTFTP_OFFSETS;
 ftp->ftps_pc = (uintptr_t)symp->st_value;
 ftp->ftps_size = (size_t)symp->st_size;
 ftp->ftps_noffs = 1;

 if (strcmp("-", ftp->ftps_func) == 0) {
  ftp->ftps_offs[0] = off;
 } else {
  uint8_t *text;
  ulong_t i;
  int size;




  pid_t pid = proc_getpid(P);
  char dmodel = proc_getmodel(P);


  if ((text = malloc(symp->st_size)) == ((void*)0)) {
   dt_dprintf("mr sparkle: malloc() failed\n");
   return (DT_PROC_ERR);
  }

  if (Pread(P, text, symp->st_size, symp->st_value) !=
      symp->st_size) {
   dt_dprintf("mr sparkle: Pread() failed\n");
   free(text);
   return (DT_PROC_ERR);
  }






  if (dt_pid_has_jump_table(P, dtp, text, ftp, symp)) {
   free(text);
   return (0);
  }

  for (i = 0; i < symp->st_size; i += size) {
   if (i == off) {
    ftp->ftps_offs[0] = i;
    break;
   }






   if (i > off) {
    free(text);
    return (DT_PROC_ALIGN);
   }

   size = dt_instr_size(&text[i], dtp, pid,
       symp->st_value + i, dmodel);





   if (size <= 0) {
    free(text);
    return (DT_PROC_ALIGN);
   }
  }

  free(text);
 }

 if (ioctl(dtp->dt_ftfd, FASTTRAPIOC_MAKEPROBE, ftp) != 0) {
  dt_dprintf("fasttrap probe creation ioctl failed: %s\n",
      strerror(errno));
  return (dt_set_errno(dtp, errno));
 }

 return (ftp->ftps_noffs);
}
