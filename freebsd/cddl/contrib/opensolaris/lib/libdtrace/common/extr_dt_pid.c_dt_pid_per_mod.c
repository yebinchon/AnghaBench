
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int u_longlong_t ;
struct TYPE_11__ {int pr_vaddr; } ;
typedef TYPE_1__ prmap_t ;
typedef int dtrace_hdl_t ;
typedef int dt_proc_t ;
struct TYPE_12__ {char const* dpp_obj; char* dpp_func; char* dpp_mod; scalar_t__ dpp_nmatches; int dpp_pr; int dpp_lmid; scalar_t__* dpp_stret; int * dpp_dpr; int * dpp_pcb; int * dpp_dtp; } ;
typedef TYPE_2__ dt_pid_probe_t ;
typedef int dt_pcb_t ;
struct TYPE_14__ {scalar_t__ pr_dmodel; } ;
struct TYPE_13__ {unsigned int st_size; scalar_t__ st_shndx; scalar_t__ st_value; int st_info; scalar_t__ st_other; scalar_t__ st_name; } ;
typedef TYPE_3__ GElf_Sym ;
typedef unsigned int Elf64_Xword ;


 int BIND_ANY ;
 int DTRACE_FUNCNAMELEN ;
 int D_PROC_FUNC ;
 int GELF_ST_INFO (int ,scalar_t__) ;
 scalar_t__ GELF_ST_TYPE (int ) ;
 int PR_DYNSYM ;
 scalar_t__ PR_MODEL_ILP32 ;
 int PR_SYMTAB ;
 int Plmid (int ,int ,int *) ;
 int Plookup_by_addr (int ,scalar_t__,char*,int ,TYPE_3__*) ;
 int * Ppltdest (int ,scalar_t__) ;
 TYPE_9__* Pstatus (int ) ;
 int Psymbol_iter_by_addr (int ,char const*,int ,int,int ,TYPE_2__*) ;
 scalar_t__ Pxlookup_by_name (int ,int ,char const*,char*,TYPE_3__*,int *) ;
 scalar_t__ SHN_UNDEF ;
 int STB_LOCAL ;
 scalar_t__ STT_FUNC ;
 int TYPE_FUNC ;
 int dt_dprintf (char*,char const*,int ,int ,int ,int ) ;
 int dt_pid_error (int *,int *,int *,int *,int ,char*,char*,char*) ;
 int dt_pid_per_sym (TYPE_2__*,TYPE_3__*,char*) ;
 int dt_pid_sym_filt ;
 scalar_t__ strcmp (char*,char*) ;
 int strisglob (char*) ;
 char const* strrchr (char const*,char) ;

__attribute__((used)) static int
dt_pid_per_mod(void *arg, const prmap_t *pmp, const char *obj)
{
 dt_pid_probe_t *pp = arg;
 dtrace_hdl_t *dtp = pp->dpp_dtp;
 dt_pcb_t *pcb = pp->dpp_pcb;
 dt_proc_t *dpr = pp->dpp_dpr;
 GElf_Sym sym;

 if (obj == ((void*)0))
  return (0);






 if ((pp->dpp_obj = strrchr(obj, '/')) == ((void*)0))
  pp->dpp_obj = obj;
 else
  pp->dpp_obj++;
 pp->dpp_stret[0] = 0;
 pp->dpp_stret[1] = 0;
 pp->dpp_stret[2] = 0;
 pp->dpp_stret[3] = 0;


 dt_dprintf("%s stret %llx %llx %llx %llx\n", obj,
     (u_longlong_t)pp->dpp_stret[0], (u_longlong_t)pp->dpp_stret[1],
     (u_longlong_t)pp->dpp_stret[2], (u_longlong_t)pp->dpp_stret[3]);






 if (!strisglob(pp->dpp_func)) {
  if (Pxlookup_by_name(pp->dpp_pr, pp->dpp_lmid, obj,
      pp->dpp_func, &sym, ((void*)0)) != 0) {
   if (strcmp("-", pp->dpp_func) == 0) {
    sym.st_name = 0;
    sym.st_info =
        GELF_ST_INFO(STB_LOCAL, STT_FUNC);
    sym.st_other = 0;
    sym.st_value = 0;




    sym.st_size = ~((Elf64_Xword) 0);


   } else if (!strisglob(pp->dpp_mod)) {
    return (dt_pid_error(dtp, pcb, dpr, ((void*)0),
        D_PROC_FUNC,
        "failed to lookup '%s' in module '%s'",
        pp->dpp_func, pp->dpp_mod));
   } else {
    return (0);
   }
  }




  if (GELF_ST_TYPE(sym.st_info) != STT_FUNC ||
      sym.st_shndx == SHN_UNDEF || sym.st_size == 0)
   return (0);
  (void) Plookup_by_addr(pp->dpp_pr, sym.st_value, pp->dpp_func,
      DTRACE_FUNCNAMELEN, &sym);

  return (dt_pid_per_sym(pp, &sym, pp->dpp_func));
 } else {
  uint_t nmatches = pp->dpp_nmatches;

  if (Psymbol_iter_by_addr(pp->dpp_pr, obj, PR_SYMTAB,
      BIND_ANY | TYPE_FUNC, dt_pid_sym_filt, pp) == 1)
   return (1);

  if (nmatches == pp->dpp_nmatches) {




   if (Psymbol_iter_by_addr(pp->dpp_pr, obj, PR_DYNSYM,
       BIND_ANY | TYPE_FUNC, dt_pid_sym_filt, pp) == 1)
    return (1);
  }
 }

 return (0);
}
