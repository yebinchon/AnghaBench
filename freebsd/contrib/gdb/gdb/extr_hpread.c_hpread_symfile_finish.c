
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int * sym_private; int md; } ;


 int xmfree (int ,int *) ;

void
hpread_symfile_finish (struct objfile *objfile)
{
  if (objfile->sym_private != ((void*)0))
    {
      xmfree (objfile->md, objfile->sym_private);
    }
}
