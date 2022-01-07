
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
struct TYPE_10__ {int prs_lmid; } ;
typedef TYPE_1__ prsyminfo_t ;
struct TYPE_11__ {scalar_t__ pr_vaddr; } ;
typedef TYPE_2__ prmap_t ;
typedef int e_type ;
struct TYPE_12__ {int dofhp_mod; int dofhp_pid; scalar_t__ dofhp_addr; int dofhp_dof; } ;
typedef TYPE_3__ dof_helper_t ;
typedef int dh ;
struct TYPE_13__ {int st_value; } ;
typedef TYPE_4__ GElf_Sym ;
typedef scalar_t__ GElf_Half ;


 int DTRACEHIOC_ADDDOF ;
 scalar_t__ ET_EXEC ;
 int Elf64_Ehdr ;
 int O_RDWR ;
 int PR_LMID_EVERY ;
 int Pread (struct ps_prochandle*,scalar_t__*,int,scalar_t__) ;
 scalar_t__ Pxlookup_by_name (struct ps_prochandle*,int ,char const*,char const*,TYPE_4__*,TYPE_1__*) ;
 int close (int) ;
 int dt_dprintf (char*,...) ;
 int dt_pid_objname (int ,int,int ,char const*) ;
 int errno ;
 scalar_t__ ioctl (int,int ,TYPE_3__*,int) ;
 scalar_t__ offsetof (int ,scalar_t__) ;
 int open (char*,int ,int ) ;
 int pr_close (struct ps_prochandle*,int) ;
 scalar_t__ pr_ioctl (struct ps_prochandle*,int,int ,TYPE_3__*,int) ;
 int pr_open (struct ps_prochandle*,char*,int ,int ) ;
 int proc_getpid (struct ps_prochandle*) ;
 int strerror (int ) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
dt_pid_usdt_mapping(void *data, const prmap_t *pmp, const char *oname)
{
 struct ps_prochandle *P = data;
 GElf_Sym sym;
 prsyminfo_t sip;
 dof_helper_t dh;
 GElf_Half e_type;
 const char *mname;
 const char *syms[] = { "___SUNW_dof", "__SUNW_dof" };
 int i, fd = -1;







 for (i = 0; i < 2; i++) {
  if (Pxlookup_by_name(P, PR_LMID_EVERY, oname, syms[i], &sym,
      &sip) != 0) {
   continue;
  }

  if ((mname = strrchr(oname, '/')) == ((void*)0))
   mname = oname;
  else
   mname++;

  dt_dprintf("lookup of %s succeeded for %s\n", syms[i], mname);

  if (Pread(P, &e_type, sizeof (e_type), pmp->pr_vaddr +
      offsetof(Elf64_Ehdr, e_type)) != sizeof (e_type)) {
   dt_dprintf("read of ELF header failed");
   continue;
  }

  dh.dofhp_dof = sym.st_value;
  dh.dofhp_addr = (e_type == ET_EXEC) ? 0 : pmp->pr_vaddr;

  dt_pid_objname(dh.dofhp_mod, sizeof (dh.dofhp_mod),
      sip.prs_lmid, mname);
  if (fd == -1 &&
      (fd = pr_open(P, "/dev/dtrace/helper", O_RDWR, 0)) < 0) {
   dt_dprintf("pr_open of helper device failed: %s\n",
       strerror(errno));
   return (-1);
  }

  if (pr_ioctl(P, fd, DTRACEHIOC_ADDDOF, &dh, sizeof (dh)) < 0)
   dt_dprintf("DOF was rejected for %s\n", dh.dofhp_mod);

 }

 if (fd != -1)



  (void) pr_close(P, fd);


 return (0);
}
