#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
struct bfd_link_info {scalar_t__ pei386_auto_import; TYPE_1__* hash; } ;
struct TYPE_21__ {struct bfd_link_hash_entry* next; } ;
struct TYPE_22__ {TYPE_3__ undef; } ;
struct TYPE_20__ {char* string; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_4__ u; TYPE_2__ root; } ;
struct archive_list {unsigned int indx; struct archive_list* next; } ;
struct archive_hash_table {int dummy; } ;
struct archive_hash_entry {struct archive_list* defs; } ;
struct TYPE_23__ {char* name; } ;
typedef  TYPE_5__ carsym ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_24__ {int archive_pass; } ;
typedef  TYPE_6__ bfd ;
struct TYPE_19__ {struct bfd_link_hash_entry* undefs_tail; struct bfd_link_hash_entry* undefs; } ;
struct TYPE_18__ {int symdef_count; TYPE_5__* symdefs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (struct archive_hash_table*,int) ; 
 struct archive_hash_entry* FUNC1 (struct archive_hash_table*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  archive_hash_newfunc ; 
 int /*<<< orphan*/  FUNC2 (struct archive_hash_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_hash_table*,int /*<<< orphan*/ ,int) ; 
 TYPE_14__* FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_error_no_armap ; 
 TYPE_6__* FUNC6 (TYPE_6__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 scalar_t__ bfd_link_hash_common ; 
 scalar_t__ bfd_link_hash_undefined ; 
 char* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*) ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,struct bfd_link_info*,int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC15
  (bfd *abfd,
   struct bfd_link_info *info,
   bfd_boolean (*checkfn) (bfd *, struct bfd_link_info *, bfd_boolean *))
{
  carsym *arsyms;
  carsym *arsym_end;
  register carsym *arsym;
  int pass;
  struct archive_hash_table arsym_hash;
  unsigned int indx;
  struct bfd_link_hash_entry **pundef;

  if (! FUNC7 (abfd))
    {
      /* An empty archive is a special case.  */
      if (FUNC9 (abfd, NULL) == NULL)
	return TRUE;
      FUNC10 (bfd_error_no_armap);
      return FALSE;
    }

  arsyms = FUNC4 (abfd)->symdefs;
  arsym_end = arsyms + FUNC4 (abfd)->symdef_count;

  /* In order to quickly determine whether an symbol is defined in
     this archive, we build a hash table of the symbols.  */
  if (! FUNC3 (&arsym_hash, archive_hash_newfunc,
				 sizeof (struct archive_hash_entry)))
    return FALSE;
  for (arsym = arsyms, indx = 0; arsym < arsym_end; arsym++, indx++)
    {
      struct archive_hash_entry *arh;
      struct archive_list *l, **pp;

      arh = FUNC1 (&arsym_hash, arsym->name, TRUE, FALSE);
      if (arh == NULL)
	goto error_return;
      l = ((struct archive_list *)
	   FUNC0 (&arsym_hash, sizeof (struct archive_list)));
      if (l == NULL)
	goto error_return;
      l->indx = indx;
      for (pp = &arh->defs; *pp != NULL; pp = &(*pp)->next)
	;
      *pp = l;
      l->next = NULL;
    }

  /* The archive_pass field in the archive itself is used to
     initialize PASS, sine we may search the same archive multiple
     times.  */
  pass = abfd->archive_pass + 1;

  /* New undefined symbols are added to the end of the list, so we
     only need to look through it once.  */
  pundef = &info->hash->undefs;
  while (*pundef != NULL)
    {
      struct bfd_link_hash_entry *h;
      struct archive_hash_entry *arh;
      struct archive_list *l;

      h = *pundef;

      /* When a symbol is defined, it is not necessarily removed from
	 the list.  */
      if (h->type != bfd_link_hash_undefined
	  && h->type != bfd_link_hash_common)
	{
	  /* Remove this entry from the list, for general cleanliness
	     and because we are going to look through the list again
	     if we search any more libraries.  We can't remove the
	     entry if it is the tail, because that would lose any
	     entries we add to the list later on (it would also cause
	     us to lose track of whether the symbol has been
	     referenced).  */
	  if (*pundef != info->hash->undefs_tail)
	    *pundef = (*pundef)->u.undef.next;
	  else
	    pundef = &(*pundef)->u.undef.next;
	  continue;
	}

      /* Look for this symbol in the archive symbol map.  */
      arh = FUNC1 (&arsym_hash, h->root.string, FALSE, FALSE);
      if (arh == NULL)
	{
	  /* If we haven't found the exact symbol we're looking for,
	     let's look for its import thunk */
	  if (info->pei386_auto_import)
	    {
	      bfd_size_type amt = FUNC13 (h->root.string) + 10;
	      char *buf = FUNC8 (amt);
	      if (buf == NULL)
		return FALSE;

	      FUNC12 (buf, "__imp_%s", h->root.string);
	      arh = FUNC1 (&arsym_hash, buf, FALSE, FALSE);
	      FUNC11(buf);
	    }
	  if (arh == NULL)
	    {
	      pundef = &(*pundef)->u.undef.next;
	      continue;
	    }
	}
      /* Look at all the objects which define this symbol.  */
      for (l = arh->defs; l != NULL; l = l->next)
	{
	  bfd *element;
	  bfd_boolean needed;

	  /* If the symbol has gotten defined along the way, quit.  */
	  if (h->type != bfd_link_hash_undefined
	      && h->type != bfd_link_hash_common)
	    break;

	  element = FUNC6 (abfd, l->indx);
	  if (element == NULL)
	    goto error_return;

	  /* If we've already included this element, or if we've
	     already checked it on this pass, continue.  */
	  if (element->archive_pass == -1
	      || element->archive_pass == pass)
	    continue;

	  /* If we can't figure this element out, just ignore it.  */
	  if (! FUNC5 (element, bfd_object))
	    {
	      element->archive_pass = -1;
	      continue;
	    }

	  /* CHECKFN will see if this element should be included, and
	     go ahead and include it if appropriate.  */
	  if (! (*checkfn) (element, info, &needed))
	    goto error_return;

	  if (! needed)
	    element->archive_pass = pass;
	  else
	    {
	      element->archive_pass = -1;

	      /* Increment the pass count to show that we may need to
		 recheck object files which were already checked.  */
	      ++pass;
	    }
	}

      pundef = &(*pundef)->u.undef.next;
    }

  FUNC2 (&arsym_hash);

  /* Save PASS in case we are called again.  */
  abfd->archive_pass = pass;

  return TRUE;

 error_return:
  FUNC2 (&arsym_hash);
  return FALSE;
}