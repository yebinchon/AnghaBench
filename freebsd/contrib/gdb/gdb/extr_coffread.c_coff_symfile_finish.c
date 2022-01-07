
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int * sym_private; int md; } ;


 int stabsread_clear_cache () ;
 int xmfree (int ,int *) ;

__attribute__((used)) static void
coff_symfile_finish (struct objfile *objfile)
{
  if (objfile->sym_private != ((void*)0))
    {
      xmfree (objfile->md, objfile->sym_private);
    }


  stabsread_clear_cache ();
}
