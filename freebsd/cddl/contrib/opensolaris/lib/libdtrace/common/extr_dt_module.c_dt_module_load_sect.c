
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ulong_t ;
typedef int dtrace_hdl_t ;
struct TYPE_9__ {int dm_name; int dm_elf; } ;
typedef TYPE_1__ dt_module_t ;
struct TYPE_10__ {scalar_t__ cts_type; scalar_t__ cts_entsize; scalar_t__ cts_size; int cts_name; int * cts_data; } ;
typedef TYPE_2__ ctf_sect_t ;
struct TYPE_12__ {scalar_t__ d_size; int * d_buf; } ;
struct TYPE_11__ {scalar_t__ sh_type; scalar_t__ sh_entsize; int sh_name; } ;
typedef TYPE_3__ GElf_Shdr ;
typedef int Elf_Scn ;
typedef TYPE_4__ Elf_Data ;


 int EDT_NOTLOADED ;
 scalar_t__ SHT_NULL ;
 int dt_dprintf (char*,int ,int ,int ) ;
 int dt_set_errno (int *,int ) ;
 TYPE_4__* elf_getdata (int *,int *) ;
 int elf_getshdrstrndx (int ,size_t*) ;
 int * elf_nextscn (int ,int *) ;
 char* elf_strptr (int ,size_t,int ) ;
 int * gelf_getshdr (int *,TYPE_3__*) ;
 int * malloc (scalar_t__) ;
 int memcpy (int *,int *,scalar_t__) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
dt_module_load_sect(dtrace_hdl_t *dtp, dt_module_t *dmp, ctf_sect_t *ctsp)
{
 const char *s;
 size_t shstrs;
 GElf_Shdr sh;
 Elf_Data *dp;
 Elf_Scn *sp;

 if (elf_getshdrstrndx(dmp->dm_elf, &shstrs) == -1)
  return (dt_set_errno(dtp, EDT_NOTLOADED));

 for (sp = ((void*)0); (sp = elf_nextscn(dmp->dm_elf, sp)) != ((void*)0); ) {
  if (gelf_getshdr(sp, &sh) == ((void*)0) || sh.sh_type == SHT_NULL ||
      (s = elf_strptr(dmp->dm_elf, shstrs, sh.sh_name)) == ((void*)0))
   continue;

  if (sh.sh_type == ctsp->cts_type &&
      sh.sh_entsize == ctsp->cts_entsize &&
      strcmp(s, ctsp->cts_name) == 0)
   break;
 }





 if (sp == ((void*)0) || (dp = elf_getdata(sp, ((void*)0))) == ((void*)0))
  return (0);




 if ((ctsp->cts_data = malloc(dp->d_size)) == ((void*)0))
  return (0);
 memcpy(ctsp->cts_data, dp->d_buf, dp->d_size);

 ctsp->cts_size = dp->d_size;

 dt_dprintf("loaded %s [%s] (%lu bytes)\n",
     dmp->dm_name, ctsp->cts_name, (ulong_t)ctsp->cts_size);

 return (0);
}
