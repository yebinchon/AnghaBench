
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
typedef int prsyminfo_t ;
struct TYPE_5__ {char* pr_mapname; } ;
typedef TYPE_1__ prmap_t ;
typedef int name ;
struct TYPE_6__ {uintptr_t st_value; } ;
typedef TYPE_2__ GElf_Sym ;


 unsigned long LM_ID_BASE ;
 scalar_t__ Pxlookup_by_addr (struct ps_prochandle*,uintptr_t,char*,int,TYPE_2__*,int*) ;
 TYPE_1__* proc_addr2map (struct ps_prochandle*,uintptr_t) ;
 size_t snprintf (char*,size_t,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static int
getsym(struct ps_prochandle *P, uintptr_t addr, char *buf, size_t size,
    int nolocks)
{
 char name[256];
 GElf_Sym sym;



 prmap_t *map;
 int info;

 size_t len;

 if (P == ((void*)0) || Pxlookup_by_addr(P, addr, name, sizeof (name),
     &sym, &info) != 0) {
  (void) snprintf(buf, size, "%#lx", (unsigned long)addr);
  return (0);
 }
 map = proc_addr2map(P, addr);
 len = snprintf(buf, size, "%s`%s", map->pr_mapname, name);

 buf += len;
 size -= len;

 if (sym.st_value != addr)
  len = snprintf(buf, size, "+%#lx", (unsigned long)(addr - sym.st_value));

 if (nolocks && strcmp("libc.so.1", map->pr_mapname) == 0 &&
     (strstr("mutex", name) == 0 ||
     strstr("rw", name) == 0))
  return (-1);

 return (0);
}
