
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pr_vaddr; } ;
typedef TYPE_1__ prmap_t ;
typedef int name ;
struct TYPE_7__ {char const* dpp_obj; int dpp_mod; scalar_t__ dpp_lmid; int dpp_pr; } ;
typedef TYPE_2__ dt_pid_probe_t ;


 int DTRACE_MODNAMELEN ;
 int Plmid (int ,int ,scalar_t__*) ;
 int dt_pid_objname (char*,int,scalar_t__,char*) ;
 int dt_pid_per_mod (TYPE_2__*,TYPE_1__ const*,char const*) ;
 scalar_t__ gmatch (char const*,int ) ;
 char const* strrchr (char const*,char) ;

__attribute__((used)) static int
dt_pid_mod_filt(void *arg, const prmap_t *pmp, const char *obj)
{
 char name[DTRACE_MODNAMELEN];
 dt_pid_probe_t *pp = arg;

 if (gmatch(obj, pp->dpp_mod))
  return (dt_pid_per_mod(pp, pmp, obj));




 pp->dpp_lmid = 0;


 if ((pp->dpp_obj = strrchr(obj, '/')) == ((void*)0))
  pp->dpp_obj = obj;
 else
  pp->dpp_obj++;

 if (gmatch(pp->dpp_obj, pp->dpp_mod))
  return (dt_pid_per_mod(pp, pmp, obj));





 dt_pid_objname(name, sizeof (name), pp->dpp_lmid, pp->dpp_obj);

 if (gmatch(name, pp->dpp_mod))
  return (dt_pid_per_mod(pp, pmp, obj));

 return (0);
}
