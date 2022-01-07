
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
typedef int name ;
typedef int i ;
struct TYPE_15__ {uintptr_t ftps_pc; size_t ftps_size; scalar_t__ ftps_noffs; int* ftps_offs; int ftps_type; } ;
typedef TYPE_1__ fasttrap_probe_spec_t ;
struct TYPE_16__ {int dt_ftfd; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_17__ {int st_size; int st_value; } ;
struct TYPE_14__ {char pr_dmodel; int pr_pid; } ;
typedef TYPE_3__ GElf_Sym ;


 int DTFTP_OFFSETS ;
 int DT_PROC_ERR ;
 int FASTTRAPIOC_MAKEPROBE ;
 int Pread (struct ps_prochandle*,int *,int,int) ;
 TYPE_13__* Pstatus (struct ps_prochandle*) ;
 int dt_dprintf (char*,...) ;
 int dt_instr_size (int *,TYPE_2__*,int ,int,char) ;
 scalar_t__ dt_pid_has_jump_table (struct ps_prochandle*,TYPE_2__*,int *,TYPE_1__*,TYPE_3__ const*) ;
 int dt_set_errno (TYPE_2__*,int ) ;
 int errno ;
 int free (int *) ;
 scalar_t__ gmatch (char*,char const*) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int * malloc (int) ;
 char proc_getmodel (struct ps_prochandle*) ;
 int proc_getpid (struct ps_prochandle*) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strerror (int ) ;

int
dt_pid_create_glob_offset_probes(struct ps_prochandle *P, dtrace_hdl_t *dtp,
    fasttrap_probe_spec_t *ftp, const GElf_Sym *symp, const char *pattern)
{
 uint8_t *text;
 int size;
 ulong_t i, end = symp->st_size;




 pid_t pid = proc_getpid(P);
 char dmodel = proc_getmodel(P);


 ftp->ftps_type = DTFTP_OFFSETS;
 ftp->ftps_pc = (uintptr_t)symp->st_value;
 ftp->ftps_size = (size_t)symp->st_size;
 ftp->ftps_noffs = 0;

 if ((text = malloc(symp->st_size)) == ((void*)0)) {
  dt_dprintf("mr sparkle: malloc() failed\n");
  return (DT_PROC_ERR);
 }

 if (Pread(P, text, symp->st_size, symp->st_value) != symp->st_size) {
  dt_dprintf("mr sparkle: Pread() failed\n");
  free(text);
  return (DT_PROC_ERR);
 }





 if (dt_pid_has_jump_table(P, dtp, text, ftp, symp)) {
  free(text);
  return (0);
 }

 if (strcmp("*", pattern) == 0) {
  for (i = 0; i < end; i += size) {
   ftp->ftps_offs[ftp->ftps_noffs++] = i;

   size = dt_instr_size(&text[i], dtp, pid,
       symp->st_value + i, dmodel);


   if (size <= 0)
    break;
  }
 } else {
  char name[sizeof (i) * 2 + 1];

  for (i = 0; i < end; i += size) {
   (void) snprintf(name, sizeof (name), "%lx", i);
   if (gmatch(name, pattern))
    ftp->ftps_offs[ftp->ftps_noffs++] = i;

   size = dt_instr_size(&text[i], dtp, pid,
       symp->st_value + i, dmodel);


   if (size <= 0)
    break;
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
