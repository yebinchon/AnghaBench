
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {struct objfile* list; } ;
struct TYPE_7__ {struct objfile* list; } ;
struct objfile {int md; int objfile_obstack; scalar_t__ demangled_names_hash; int macro_cache; int psymbol_cache; TYPE_4__ static_psymbols; TYPE_3__ global_psymbols; struct objfile* name; int * obfd; TYPE_2__* sf; TYPE_1__* separate_debug_objfile_backlink; struct objfile* separate_debug_objfile; } ;
struct TYPE_6__ {int (* sym_finish ) (struct objfile*) ;} ;
struct TYPE_5__ {int * separate_debug_objfile; } ;


 int bcache_xfree (int ) ;
 int bfd_close (int *) ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 char* bfd_get_filename (int *) ;
 int clear_pc_function_cache () ;
 int htab_delete (scalar_t__) ;
 int objfile_free_data (struct objfile*) ;
 int obstack_free (int *,int ) ;
 struct objfile* rt_common_objfile ;
 int stub1 (struct objfile*) ;
 int unlink_objfile (struct objfile*) ;
 int warning (char*,char*,int ) ;
 int xfree (char*) ;
 int xmfree (int ,struct objfile*) ;

void
free_objfile (struct objfile *objfile)
{
  if (objfile->separate_debug_objfile)
    {
      free_objfile (objfile->separate_debug_objfile);
    }

  if (objfile->separate_debug_objfile_backlink)
    {


      objfile->separate_debug_objfile_backlink->separate_debug_objfile = ((void*)0);
    }
  if (objfile->sf != ((void*)0))
    {
      (*objfile->sf->sym_finish) (objfile);
    }



  if (objfile->obfd != ((void*)0))
    {
      char *name = bfd_get_filename (objfile->obfd);
      if (!bfd_close (objfile->obfd))
 warning ("cannot close \"%s\": %s",
   name, bfd_errmsg (bfd_get_error ()));
      xfree (name);
    }



  unlink_objfile (objfile);




  if (objfile == rt_common_objfile)
    rt_common_objfile = ((void*)0);
  clear_pc_function_cache ();



  objfile_free_data (objfile);
  if (objfile->name != ((void*)0))
    {
      xmfree (objfile->md, objfile->name);
    }
  if (objfile->global_psymbols.list)
    xmfree (objfile->md, objfile->global_psymbols.list);
  if (objfile->static_psymbols.list)
    xmfree (objfile->md, objfile->static_psymbols.list);

  bcache_xfree (objfile->psymbol_cache);
  bcache_xfree (objfile->macro_cache);
  if (objfile->demangled_names_hash)
    htab_delete (objfile->demangled_names_hash);
  obstack_free (&objfile->objfile_obstack, 0);
  xmfree (objfile->md, objfile);
  objfile = ((void*)0);
}
