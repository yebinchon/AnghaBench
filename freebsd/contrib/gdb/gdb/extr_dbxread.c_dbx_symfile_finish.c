
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int * sym_stab_info; int md; } ;
struct header_file {struct header_file* vector; struct header_file* name; } ;


 struct header_file* HEADER_FILES (struct objfile*) ;
 int N_HEADER_FILES (struct objfile*) ;
 int free_header_files () ;
 int xfree (struct header_file*) ;
 int xmfree (int ,int *) ;

__attribute__((used)) static void
dbx_symfile_finish (struct objfile *objfile)
{
  if (objfile->sym_stab_info != ((void*)0))
    {
      if (HEADER_FILES (objfile) != ((void*)0))
 {
   int i = N_HEADER_FILES (objfile);
   struct header_file *hfiles = HEADER_FILES (objfile);

   while (--i >= 0)
     {
       xfree (hfiles[i].name);
       xfree (hfiles[i].vector);
     }
   xfree (hfiles);
 }
      xmfree (objfile->md, objfile->sym_stab_info);
    }
  free_header_files ();
}
