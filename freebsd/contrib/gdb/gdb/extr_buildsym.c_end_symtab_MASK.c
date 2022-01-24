#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct symtab {int block_line_section; char* dirname; int primary; int /*<<< orphan*/  debugformat; int /*<<< orphan*/  language; int /*<<< orphan*/ * free_func; int /*<<< orphan*/  free_code; struct linetable* linetable; int /*<<< orphan*/ * macro_table; struct blockvector* blockvector; } ;
struct subfile {struct subfile* next; int /*<<< orphan*/ * debugformat; struct linetable* line_vector; int /*<<< orphan*/ * dirname; int /*<<< orphan*/ * name; int /*<<< orphan*/  language; } ;
struct pending_block {struct pending_block* next; struct block* block; } ;
struct objfile {int flags; int /*<<< orphan*/  objfile_obstack; } ;
struct linetable_entry {int dummy; } ;
struct linetable {int nitems; int /*<<< orphan*/  item; } ;
struct context_stack {int /*<<< orphan*/  start_addr; int /*<<< orphan*/  old_blocks; int /*<<< orphan*/  name; } ;
struct blockvector {int dummy; } ;
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blockvector*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct block*) ; 
 int OBJF_REORDERED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  STATIC_BLOCK ; 
 struct symtab* FUNC3 (int /*<<< orphan*/ *,struct objfile*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  compare_line_numbers ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ context_stack_depth ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * current_subfile ; 
 int /*<<< orphan*/ * file_symbols ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct objfile*) ; 
 int /*<<< orphan*/  FUNC8 (struct objfile*) ; 
 int /*<<< orphan*/  free_linetable ; 
 int /*<<< orphan*/ * global_symbols ; 
 scalar_t__ have_line_numbers ; 
 int /*<<< orphan*/ * last_source_file ; 
 int /*<<< orphan*/  last_source_start_addr ; 
 int /*<<< orphan*/ * local_symbols ; 
 struct blockvector* FUNC9 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC10 (struct linetable*,struct linetable*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 struct pending_block* pending_blocks ; 
 int /*<<< orphan*/ * pending_macros ; 
 struct context_stack* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 struct subfile* subfiles ; 
 int /*<<< orphan*/  symfile_complaints ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 scalar_t__ FUNC18 (char*,int) ; 

struct symtab *
FUNC19 (CORE_ADDR end_addr, struct objfile *objfile, int section)
{
  struct symtab *symtab = NULL;
  struct blockvector *blockvector;
  struct subfile *subfile;
  struct context_stack *cstk;
  struct subfile *nextsub;

  /* Finish the lexical context of the last function in the file; pop
     the context stack.  */

  if (context_stack_depth > 0)
    {
      cstk = FUNC13 ();
      /* Make a block for the local symbols within.  */
      FUNC7 (cstk->name, &local_symbols, cstk->old_blocks,
		    cstk->start_addr, end_addr, objfile);

      if (context_stack_depth > 0)
	{
	  /* This is said to happen with SCO.  The old coffread.c
	     code simply emptied the context stack, so we do the
	     same.  FIXME: Find out why it is happening.  This is not
	     believed to happen in most cases (even for coffread.c);
	     it used to be an abort().  */
	  FUNC5 (&symfile_complaints,
	             "Context stack not empty in end_symtab");
	  context_stack_depth = 0;
	}
    }

  /* Reordered executables may have out of order pending blocks; if
     OBJF_REORDERED is true, then sort the pending blocks.  */
  if ((objfile->flags & OBJF_REORDERED) && pending_blocks)
    {
      /* FIXME!  Remove this horrid bubble sort and use merge sort!!! */
      int swapped;
      do
	{
	  struct pending_block *pb, *pbnext;

	  pb = pending_blocks;
	  pbnext = pb->next;
	  swapped = 0;

	  while (pbnext)
	    {
	      /* swap blocks if unordered! */

	      if (FUNC1 (pb->block) < FUNC1 (pbnext->block))
		{
		  struct block *tmp = pb->block;
		  pb->block = pbnext->block;
		  pbnext->block = tmp;
		  swapped = 1;
		}
	      pb = pbnext;
	      pbnext = pbnext->next;
	    }
	}
      while (swapped);
    }

  /* Cleanup any undefined types that have been left hanging around
     (this needs to be done before the finish_blocks so that
     file_symbols is still good).

     Both cleanup_undefined_types and finish_global_stabs are stabs
     specific, but harmless for other symbol readers, since on gdb
     startup or when finished reading stabs, the state is set so these
     are no-ops.  FIXME: Is this handled right in case of QUIT?  Can
     we make this cleaner?  */

  FUNC4 ();
  FUNC8 (objfile);

  if (pending_blocks == NULL
      && file_symbols == NULL
      && global_symbols == NULL
      && have_line_numbers == 0
      && pending_macros == NULL)
    {
      /* Ignore symtabs that have no functions with real debugging
         info.  */
      blockvector = NULL;
    }
  else
    {
      /* Define the STATIC_BLOCK & GLOBAL_BLOCK, and build the
         blockvector.  */
      FUNC7 (0, &file_symbols, 0, last_source_start_addr, end_addr,
		    objfile);
      FUNC7 (0, &global_symbols, 0, last_source_start_addr, end_addr,
		    objfile);
      blockvector = FUNC9 (objfile);
      FUNC6 (FUNC0 (blockvector, STATIC_BLOCK),
			     &objfile->objfile_obstack);
    }

#ifndef PROCESS_LINENUMBER_HOOK
#define PROCESS_LINENUMBER_HOOK()
#endif
  PROCESS_LINENUMBER_HOOK ();	/* Needed for xcoff. */

  /* Now create the symtab objects proper, one for each subfile.  */
  /* (The main file is the last one on the chain.)  */

  for (subfile = subfiles; subfile; subfile = nextsub)
    {
      int linetablesize = 0;
      symtab = NULL;

      /* If we have blocks of symbols, make a symtab. Otherwise, just
         ignore this file and any line number info in it.  */
      if (blockvector)
	{
	  if (subfile->line_vector)
	    {
	      linetablesize = sizeof (struct linetable) +
	        subfile->line_vector->nitems * sizeof (struct linetable_entry);
#if 0
	      /* I think this is artifact from before it went on the
	         obstack. I doubt we'll need the memory between now
	         and when we free it later in this function.  */
	      /* First, shrink the linetable to make more memory.  */
	      subfile->line_vector = (struct linetable *)
		xrealloc ((char *) subfile->line_vector, linetablesize);
#endif

	      /* Like the pending blocks, the line table may be
	         scrambled in reordered executables.  Sort it if
	         OBJF_REORDERED is true.  */
	      if (objfile->flags & OBJF_REORDERED)
		FUNC14 (subfile->line_vector->item,
		       subfile->line_vector->nitems,
		     sizeof (struct linetable_entry), compare_line_numbers);
	    }

	  /* Now, allocate a symbol table.  */
	  symtab = FUNC3 (subfile->name, objfile);

	  /* Fill in its components.  */
	  symtab->blockvector = blockvector;
          symtab->macro_table = pending_macros;
	  if (subfile->line_vector)
	    {
	      /* Reallocate the line table on the symbol obstack */
	      symtab->linetable = (struct linetable *)
		FUNC12 (&objfile->objfile_obstack, linetablesize);
	      FUNC10 (symtab->linetable, subfile->line_vector, linetablesize);
	    }
	  else
	    {
	      symtab->linetable = NULL;
	    }
	  symtab->block_line_section = section;
	  if (subfile->dirname)
	    {
	      /* Reallocate the dirname on the symbol obstack */
	      symtab->dirname = (char *)
		FUNC12 (&objfile->objfile_obstack,
			       FUNC16 (subfile->dirname) + 1);
	      FUNC15 (symtab->dirname, subfile->dirname);
	    }
	  else
	    {
	      symtab->dirname = NULL;
	    }
	  symtab->free_code = free_linetable;
	  symtab->free_func = NULL;

	  /* Use whatever language we have been using for this
	     subfile, not the one that was deduced in allocate_symtab
	     from the filename.  We already did our own deducing when
	     we created the subfile, and we may have altered our
	     opinion of what language it is from things we found in
	     the symbols. */
	  symtab->language = subfile->language;

	  /* Save the debug format string (if any) in the symtab */
	  if (subfile->debugformat != NULL)
	    {
	      symtab->debugformat = FUNC11 (subfile->debugformat,
					      FUNC16 (subfile->debugformat),
						  &objfile->objfile_obstack);
	    }

	  /* All symtabs for the main file and the subfiles share a
	     blockvector, so we need to clear primary for everything
	     but the main file.  */

	  symtab->primary = 0;
	}
      if (subfile->name != NULL)
	{
	  FUNC17 ((void *) subfile->name);
	}
      if (subfile->dirname != NULL)
	{
	  FUNC17 ((void *) subfile->dirname);
	}
      if (subfile->line_vector != NULL)
	{
	  FUNC17 ((void *) subfile->line_vector);
	}
      if (subfile->debugformat != NULL)
	{
	  FUNC17 ((void *) subfile->debugformat);
	}

      nextsub = subfile->next;
      FUNC17 ((void *) subfile);
    }

  /* Set this for the main source file.  */
  if (symtab)
    {
      symtab->primary = 1;
    }

  last_source_file = NULL;
  current_subfile = NULL;
  pending_macros = NULL;

  return symtab;
}