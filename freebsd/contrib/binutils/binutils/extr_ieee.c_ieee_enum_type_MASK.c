#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee_handle {struct ieee_defined_enum* enums; TYPE_2__* type_stack; } ;
struct ieee_defined_enum {char const* tag; unsigned int indx; char const** names; int* vals; scalar_t__ defined; struct ieee_defined_enum* next; } ;
struct ieee_buflist {int dummy; } ;
typedef  int bfd_signed_vma ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_3__ {unsigned int indx; } ;
struct TYPE_4__ {TYPE_1__ type; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ieee_handle*,char const*,unsigned int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct ieee_buflist*) ; 
 scalar_t__ FUNC1 (struct ieee_handle*,unsigned int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_defined_enum*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (void *p, const char *tag, const char **names,
		bfd_signed_vma *vals)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  struct ieee_defined_enum *e;
  bfd_boolean localp, simple;
  unsigned int indx;
  int i = 0;

  localp = FALSE;
  indx = (unsigned int) -1;
  for (e = info->enums; e != NULL; e = e->next)
    {
      if (tag == NULL)
	{
	  if (e->tag != NULL)
	    continue;
	}
      else
	{
	  if (e->tag == NULL
	      || tag[0] != e->tag[0]
	      || FUNC5 (tag, e->tag) != 0)
	    continue;
	}

      if (! e->defined)
	{
	  /* This enum tag has been seen but not defined.  */
	  indx = e->indx;
	  break;
	}

      if (names != NULL && e->names != NULL)
	{
	  for (i = 0; names[i] != NULL && e->names[i] != NULL; i++)
	    {
	      if (names[i][0] != e->names[i][0]
		  || vals[i] != e->vals[i]
		  || FUNC5 (names[i], e->names[i]) != 0)
		break;
	    }
	}

      if ((names == NULL && e->names == NULL)
	  || (names != NULL
	      && e->names != NULL
	      && names[i] == NULL
	      && e->names[i] == NULL))
	{
	  /* We've seen this enum before.  */
	  return FUNC1 (info, e->indx, 0, TRUE, FALSE);
	}

      if (tag != NULL)
	{
	  /* We've already seen an enum of the same name, so we must make
	     sure to output this one locally.  */
	  localp = TRUE;
	  break;
	}
    }

  /* If this is a simple enumeration, in which the values start at 0
     and always increment by 1, we can use type E.  Otherwise we must
     use type N.  */

  simple = TRUE;
  if (names != NULL)
    {
      for (i = 0; names[i] != NULL; i++)
	{
	  if (vals[i] != i)
	    {
	      simple = FALSE;
	      break;
	    }
	}
    }

  if (! FUNC0 (info, tag, indx, 0, TRUE, localp,
				(struct ieee_buflist *) NULL)
      || ! FUNC3 (info, simple ? 'E' : 'N'))
    return FALSE;
  if (simple)
    {
      /* FIXME: This is supposed to be the enumeration size, but we
         don't store that.  */
      if (! FUNC3 (info, 4))
	return FALSE;
    }
  if (names != NULL)
    {
      for (i = 0; names[i] != NULL; i++)
	{
	  if (! FUNC2 (info, names[i]))
	    return FALSE;
	  if (! simple)
	    {
	      if (! FUNC3 (info, vals[i]))
		return FALSE;
	    }
	}
    }

  if (! localp)
    {
      if (indx == (unsigned int) -1)
	{
	  e = (struct ieee_defined_enum *) FUNC6 (sizeof *e);
	  FUNC4 (e, 0, sizeof *e);
	  e->indx = info->type_stack->type.indx;
	  e->tag = tag;

	  e->next = info->enums;
	  info->enums = e;
	}

      e->names = names;
      e->vals = vals;
      e->defined = TRUE;
    }

  return TRUE;
}