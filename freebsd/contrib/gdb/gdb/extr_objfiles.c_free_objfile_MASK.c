#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct objfile* list; } ;
struct TYPE_7__ {struct objfile* list; } ;
struct objfile {int /*<<< orphan*/  md; int /*<<< orphan*/  objfile_obstack; scalar_t__ demangled_names_hash; int /*<<< orphan*/  macro_cache; int /*<<< orphan*/  psymbol_cache; TYPE_4__ static_psymbols; TYPE_3__ global_psymbols; struct objfile* name; int /*<<< orphan*/ * obfd; TYPE_2__* sf; TYPE_1__* separate_debug_objfile_backlink; struct objfile* separate_debug_objfile; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* sym_finish ) (struct objfile*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/ * separate_debug_objfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct objfile* rt_common_objfile ; 
 int /*<<< orphan*/  FUNC9 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC10 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct objfile*) ; 

void
FUNC14 (struct objfile *objfile)
{
  if (objfile->separate_debug_objfile)
    {
      FUNC14 (objfile->separate_debug_objfile);
    }
  
  if (objfile->separate_debug_objfile_backlink)
    {
      /* We freed the separate debug file, make sure the base objfile
	 doesn't reference it.  */
      objfile->separate_debug_objfile_backlink->separate_debug_objfile = NULL;
    }
  
  /* First do any symbol file specific actions required when we are
     finished with a particular symbol file.  Note that if the objfile
     is using reusable symbol information (via mmalloc) then each of
     these routines is responsible for doing the correct thing, either
     freeing things which are valid only during this particular gdb
     execution, or leaving them to be reused during the next one. */

  if (objfile->sf != NULL)
    {
      (*objfile->sf->sym_finish) (objfile);
    }

  /* We always close the bfd. */

  if (objfile->obfd != NULL)
    {
      char *name = FUNC4 (objfile->obfd);
      if (!FUNC1 (objfile->obfd))
	FUNC11 ("cannot close \"%s\": %s",
		 name, FUNC2 (FUNC3 ()));
      FUNC12 (name);
    }

  /* Remove it from the chain of all objfiles. */

  FUNC10 (objfile);

  /* If we are going to free the runtime common objfile, mark it
     as unallocated.  */

  if (objfile == rt_common_objfile)
    rt_common_objfile = NULL;

  /* Before the symbol table code was redone to make it easier to
     selectively load and remove information particular to a specific
     linkage unit, gdb used to do these things whenever the monolithic
     symbol table was blown away.  How much still needs to be done
     is unknown, but we play it safe for now and keep each action until
     it is shown to be no longer needed. */

  /* I *think* all our callers call clear_symtab_users.  If so, no need
     to call this here.  */
  FUNC5 ();

  /* The last thing we do is free the objfile struct itself. */

  FUNC7 (objfile);
  if (objfile->name != NULL)
    {
      FUNC13 (objfile->md, objfile->name);
    }
  if (objfile->global_psymbols.list)
    FUNC13 (objfile->md, objfile->global_psymbols.list);
  if (objfile->static_psymbols.list)
    FUNC13 (objfile->md, objfile->static_psymbols.list);
  /* Free the obstacks for non-reusable objfiles */
  FUNC0 (objfile->psymbol_cache);
  FUNC0 (objfile->macro_cache);
  if (objfile->demangled_names_hash)
    FUNC6 (objfile->demangled_names_hash);
  FUNC8 (&objfile->objfile_obstack, 0);
  FUNC13 (objfile->md, objfile);
  objfile = NULL;
}