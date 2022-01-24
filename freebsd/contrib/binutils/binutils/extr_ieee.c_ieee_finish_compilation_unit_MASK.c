#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ieee_range {int low; int high; struct ieee_range* next; } ;
struct ieee_handle {int highaddr; char* modname; TYPE_2__* abfd; struct ieee_range* ranges; int /*<<< orphan*/  data; int /*<<< orphan*/  linenos; int /*<<< orphan*/  vars; int /*<<< orphan*/  types; int /*<<< orphan*/  lineno_filename; int /*<<< orphan*/  filename; int /*<<< orphan*/ * pending_lineno_filename; int /*<<< orphan*/  cxx; } ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_6__ {int flags; int index; struct TYPE_6__* next; } ;
typedef  TYPE_1__ asection ;
struct TYPE_7__ {TYPE_1__* sections; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int IEEE_SECTION_NUMBER_BASE ; 
 int SEC_CODE ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ieee_bb_record_enum ; 
 scalar_t__ ieee_be_record_enum ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee_handle*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee_handle*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC12 (struct ieee_handle *info)
{
  struct ieee_range *r;

  if (! FUNC5 (&info->types))
    {
      if (! FUNC6 (info, &info->types)
	  || ! FUNC8 (info, (int) ieee_be_record_enum))
	return FALSE;
    }

  if (! FUNC5 (&info->cxx))
    {
      /* Append any C++ information to the global function and
         variable information.  */
      FUNC0 (! FUNC5 (&info->vars));
      if (! FUNC6 (info, &info->vars))
	return FALSE;

      /* We put the pmisc records in a dummy procedure, just as the
         MRI compiler does.  */
      if (! FUNC8 (info, (int) ieee_bb_record_enum)
	  || ! FUNC8 (info, 6)
	  || ! FUNC10 (info, 0)
	  || ! FUNC9 (info, "__XRYCPP")
	  || ! FUNC10 (info, 0)
	  || ! FUNC10 (info, 0)
	  || ! FUNC10 (info, info->highaddr - 1)
	  || ! FUNC4 (info, &info->vars, &info->cxx)
	  || ! FUNC6 (info, &info->vars)
	  || ! FUNC8 (info, (int) ieee_be_record_enum)
	  || ! FUNC10 (info, info->highaddr - 1))
	return FALSE;
    }

  if (! FUNC5 (&info->vars))
    {
      if (! FUNC6 (info, &info->vars)
	  || ! FUNC8 (info, (int) ieee_be_record_enum))
	return FALSE;
    }

  if (info->pending_lineno_filename != NULL)
    {
      /* Force out the pending line number.  */
      if (! FUNC7 ((void *) info, (const char *) NULL, 0, (bfd_vma) -1))
	return FALSE;
    }
  if (! FUNC5 (&info->linenos))
    {
      if (! FUNC6 (info, &info->linenos)
	  || ! FUNC8 (info, (int) ieee_be_record_enum))
	return FALSE;
      if (FUNC11 (info->filename, info->lineno_filename) != 0)
	{
	  /* We were not in the main file.  We just closed the
             included line number block, and now we must close the
             main line number block.  */
	  if (! FUNC8 (info, (int) ieee_be_record_enum))
	    return FALSE;
	}
    }

  if (! FUNC4 (info, &info->data, &info->types)
      || ! FUNC4 (info, &info->data, &info->vars)
      || ! FUNC4 (info, &info->data, &info->linenos))
    return FALSE;

  /* Build BB10/BB11 blocks based on the ranges we recorded.  */
  if (! FUNC6 (info, &info->data))
    return FALSE;

  if (! FUNC8 (info, (int) ieee_bb_record_enum)
      || ! FUNC8 (info, 10)
      || ! FUNC10 (info, 0)
      || ! FUNC9 (info, info->modname)
      || ! FUNC9 (info, "")
      || ! FUNC10 (info, 0)
      || ! FUNC9 (info, "GNU objcopy"))
    return FALSE;

  for (r = info->ranges; r != NULL; r = r->next)
    {
      bfd_vma low, high;
      asection *s;
      int kind;

      low = r->low;
      high = r->high;

      /* Find the section corresponding to this range.  */
      for (s = info->abfd->sections; s != NULL; s = s->next)
	{
	  if (FUNC1 (info->abfd, s) <= low
	      && high <= (FUNC1 (info->abfd, s)
			  + FUNC2 (info->abfd, s)))
	    break;
	}

      if (s == NULL)
	{
	  /* Just ignore this range.  */
	  continue;
	}

      /* Coalesce ranges if it seems reasonable.  */
      while (r->next != NULL
	     && high + 0x1000 >= r->next->low
	     && (r->next->high
		 <= (FUNC1 (info->abfd, s)
		     + FUNC2 (info->abfd, s))))
	{
	  r = r->next;
	  high = r->high;
	}

      if ((s->flags & SEC_CODE) != 0)
	kind = 1;
      else if ((s->flags & SEC_READONLY) != 0)
	kind = 3;
      else
	kind = 2;

      if (! FUNC8 (info, (int) ieee_bb_record_enum)
	  || ! FUNC8 (info, 11)
	  || ! FUNC10 (info, 0)
	  || ! FUNC9 (info, "")
	  || ! FUNC10 (info, kind)
	  || ! FUNC10 (info, s->index + IEEE_SECTION_NUMBER_BASE)
	  || ! FUNC10 (info, low)
	  || ! FUNC8 (info, (int) ieee_be_record_enum)
	  || ! FUNC10 (info, high - low))
	return FALSE;

      /* Add this range to the list of global ranges.  */
      if (! FUNC3 (info, TRUE, low, high))
	return FALSE;
    }

  if (! FUNC8 (info, (int) ieee_be_record_enum))
    return FALSE;

  return TRUE;
}