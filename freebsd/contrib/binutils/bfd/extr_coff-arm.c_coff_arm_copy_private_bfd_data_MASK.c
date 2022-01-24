#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_14__ {scalar_t__ xvec; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static bfd_boolean
FUNC10 (bfd * src, bfd * dest)
{
  FUNC3 (src != NULL && dest != NULL);

  if (src == dest)
    return TRUE;

  /* If the destination is not in the same format as the source, do not do
     the copy.  */
  if (src->xvec != dest->xvec)
    return TRUE;

  /* Copy the flags field.  */
  if (FUNC2 (src))
    {
      if (FUNC2 (dest))
	{
	  /* If the src and dest have different APCS flag bits set, fail.  */
	  if (FUNC0 (dest) != FUNC0 (src))
	    return FALSE;

	  if (FUNC1 (dest) != FUNC1 (src))
	    return FALSE;

	  if (FUNC6 (dest) != FUNC6 (src))
	    return FALSE;
	}
      else
	FUNC7 (dest, FUNC0 (src) | FUNC1 (src)
			| FUNC6 (src));
    }

  if (FUNC5 (src))
    {
      if (FUNC5 (dest))
	{
	  /* If the src and dest have different interworking flags then turn
	     off the interworking bit.  */
	  if (FUNC4 (dest) != FUNC4 (src))
	    {
	      if (FUNC4 (dest))
		{
		  /* xgettext:c-format */
		  FUNC9 (("\
Warning: Clearing the interworking flag of %B because non-interworking code in %B has been linked with it"),
				      dest, src);
		}

	      FUNC8 (dest, 0);
	    }
	}
      else
	{
	  FUNC8 (dest, FUNC4 (src));
	}
    }

  return TRUE;
}