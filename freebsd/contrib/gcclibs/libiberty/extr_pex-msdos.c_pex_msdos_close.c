
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_obj {scalar_t__ sysdep; } ;
struct pex_msdos {int ** files; } ;


 size_t fdindex ;
 int free (int *) ;
 size_t pe_msdos_fdindex (struct pex_msdos*,int) ;

__attribute__((used)) static int
pex_msdos_close (struct pex_obj *obj, int fd)
{
  struct pex_msdos *ms;
  int fdinex;

  ms = (struct pex_msdos *) obj->sysdep;
  fdindex = pe_msdos_fdindex (ms, fd);
  free (ms->files[fdindex]);
  ms->files[fdindex] = ((void*)0);
}
