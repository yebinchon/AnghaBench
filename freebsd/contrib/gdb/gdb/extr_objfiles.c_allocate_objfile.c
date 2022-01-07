
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int sect_index_text; int sect_index_data; int sect_index_bss; int sect_index_rodata; int flags; struct objfile* next; int * cp_namespace_symtab; int * md; int * name; int mtime; int * obfd; int objfile_obstack; void* macro_cache; void* psymbol_cache; } ;
typedef int bfd ;


 void* bcache_xmalloc () ;
 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 char* bfd_get_filename (int *) ;
 int bfd_get_mtime (int *) ;
 scalar_t__ build_objfile_section_table (struct objfile*) ;
 int error (char*,int *,char*) ;
 int memset (struct objfile*,int ,int) ;
 void* mstrsave (int *,char*) ;
 struct objfile* object_files ;
 int objfile_alloc_data (struct objfile*) ;
 int obstack_init (int *) ;
 int terminate_minimal_symbol_table (struct objfile*) ;
 scalar_t__ xmalloc (int) ;
 int xmfree (int *,int *) ;

struct objfile *
allocate_objfile (bfd *abfd, int flags)
{
  struct objfile *objfile = ((void*)0);
  struct objfile *last_one = ((void*)0);





  if (objfile == ((void*)0))
    {
      objfile = (struct objfile *) xmalloc (sizeof (struct objfile));
      memset (objfile, 0, sizeof (struct objfile));
      objfile->md = ((void*)0);
      objfile->psymbol_cache = bcache_xmalloc ();
      objfile->macro_cache = bcache_xmalloc ();


      obstack_init (&objfile->objfile_obstack);
      terminate_minimal_symbol_table (objfile);
    }

  objfile_alloc_data (objfile);





  objfile->obfd = abfd;
  if (objfile->name != ((void*)0))
    {
      xmfree (objfile->md, objfile->name);
    }
  if (abfd != ((void*)0))
    {
      objfile->name = mstrsave (objfile->md, bfd_get_filename (abfd));
      objfile->mtime = bfd_get_mtime (abfd);



      if (build_objfile_section_table (objfile))
 {
   error ("Can't find the file sections in `%s': %s",
   objfile->name, bfd_errmsg (bfd_get_error ()));
 }
    }
  else
    {
      objfile->name = mstrsave (objfile->md, "<<anonymous objfile>>");
    }




  objfile->sect_index_text = -1;
  objfile->sect_index_data = -1;
  objfile->sect_index_bss = -1;
  objfile->sect_index_rodata = -1;



  objfile->cp_namespace_symtab = ((void*)0);



  objfile->next = ((void*)0);
  if (object_files == ((void*)0))
    object_files = objfile;
  else
    {
      for (last_one = object_files;
    last_one->next;
    last_one = last_one->next);
      last_one->next = objfile;
    }


  objfile->flags |= flags;

  return (objfile);
}
