
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int flags; struct dbx_symfile_info* sym_private; int md; struct dbx_symfile_info* sym_stab_info; } ;
struct dbx_symfile_info {int dummy; } ;
struct coff_symfile_info {int dummy; } ;


 int OBJF_REORDERED ;
 int init_entry_point_info (struct objfile*) ;
 int memset (struct dbx_symfile_info*,int ,int) ;
 struct dbx_symfile_info* xmmalloc (int ,int) ;

__attribute__((used)) static void
coff_symfile_init (struct objfile *objfile)
{

  objfile->sym_stab_info = (struct dbx_symfile_info *)
    xmmalloc (objfile->md, sizeof (struct dbx_symfile_info));

  memset (objfile->sym_stab_info, 0,
   sizeof (struct dbx_symfile_info));


  objfile->sym_private = xmmalloc (objfile->md,
       sizeof (struct coff_symfile_info));

  memset (objfile->sym_private, 0, sizeof (struct coff_symfile_info));




  objfile->flags |= OBJF_REORDERED;

  init_entry_point_info (objfile);
}
