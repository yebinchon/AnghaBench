
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int * sym_stab_info; int md; } ;


 int xmfree (int ,int *) ;

__attribute__((used)) static void
elf_symfile_finish (struct objfile *objfile)
{
  if (objfile->sym_stab_info != ((void*)0))
    {
      xmfree (objfile->md, objfile->sym_stab_info);
    }
}
