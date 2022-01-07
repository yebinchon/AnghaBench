
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct probe_finder {scalar_t__ addr; TYPE_1__* pev; } ;
struct perf_probe_point {scalar_t__ offset; scalar_t__ lazy_line; } ;
struct TYPE_2__ {struct perf_probe_point point; } ;
typedef int Dwarf_Die ;
typedef scalar_t__ Dwarf_Addr ;


 int ENOENT ;
 int call_probe_finder (int *,struct probe_finder*) ;
 int dwarf_diename (int *) ;
 scalar_t__ dwarf_entrypc (int *,scalar_t__*) ;
 int find_probe_point_lazy (int *,struct probe_finder*) ;
 int pr_debug (char*,int ) ;
 int pr_warning (char*,int ) ;

__attribute__((used)) static int probe_point_inline_cb(Dwarf_Die *in_die, void *data)
{
 struct probe_finder *pf = data;
 struct perf_probe_point *pp = &pf->pev->point;
 Dwarf_Addr addr;
 int ret;

 if (pp->lazy_line)
  ret = find_probe_point_lazy(in_die, pf);
 else {

  if (dwarf_entrypc(in_die, &addr) != 0) {
   pr_warning("Failed to get entry address of %s.\n",
       dwarf_diename(in_die));
   return -ENOENT;
  }
  pf->addr = addr;
  pf->addr += pp->offset;
  pr_debug("found inline addr: 0x%jx\n",
    (uintmax_t)pf->addr);

  ret = call_probe_finder(in_die, pf);
 }

 return ret;
}
