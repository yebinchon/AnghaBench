
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ st_shndx; scalar_t__ st_size; scalar_t__ st_value; } ;
struct TYPE_6__ {scalar_t__ dpp_last_taken; TYPE_2__ dpp_last; int dpp_func; } ;
typedef TYPE_1__ dt_pid_probe_t ;
typedef TYPE_2__ GElf_Sym ;


 scalar_t__ SHN_UNDEF ;
 int dt_dprintf (char*,char const*) ;
 int dt_pid_per_sym (TYPE_1__*,TYPE_2__ const*,char const*) ;
 scalar_t__ gmatch (char const*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
dt_pid_sym_filt(void *arg, const GElf_Sym *symp, const char *func)
{
 dt_pid_probe_t *pp = arg;

 if (symp->st_shndx == SHN_UNDEF)
  return (0);

 if (symp->st_size == 0) {
  dt_dprintf("st_size of %s is zero\n", func);
  return (0);
 }

 if (pp->dpp_last_taken == 0 ||
     symp->st_value != pp->dpp_last.st_value ||
     symp->st_size != pp->dpp_last.st_size) {







  if (strcmp(func, "_init") == 0 || strcmp(func, "_fini") == 0)
   return (0);

  if ((pp->dpp_last_taken = gmatch(func, pp->dpp_func)) != 0) {
   pp->dpp_last = *symp;
   return (dt_pid_per_sym(pp, symp, func));
  }
 }

 return (0);
}
