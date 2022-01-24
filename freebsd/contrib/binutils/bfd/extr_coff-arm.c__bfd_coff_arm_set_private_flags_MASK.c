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
typedef  int flagword ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int F_APCS26 ; 
 int F_APCS_26 ; 
 int F_APCS_FLOAT ; 
 int F_INTERWORK ; 
 int F_PIC ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC11 (bfd * abfd, flagword flags)
{
  flagword flag;

  FUNC3 (abfd != NULL);

  flag = (flags & F_APCS26) ? F_APCS_26 : 0;

  /* Make sure that the APCS field has not been initialised to the opposite
     value.  */
  if (FUNC2 (abfd)
      && (   (FUNC0    (abfd) != flag)
	  || (FUNC1 (abfd) != (flags & F_APCS_FLOAT))
	  || (FUNC6        (abfd) != (flags & F_PIC))
	  ))
    return FALSE;

  flag |= (flags & (F_APCS_FLOAT | F_PIC));

  FUNC7 (abfd, flag);

  flag = (flags & F_INTERWORK);

  /* If the BFD has already had its interworking flag set, but it
     is different from the value that we have been asked to set,
     then assume that that merged code will not support interworking
     and set the flag accordingly.  */
  if (FUNC5 (abfd) && (FUNC4 (abfd) != flag))
    {
      if (flag)
	/* xgettext: c-format */
	FUNC10 (FUNC9("Warning: Not setting interworking flag of %B since it has already been specified as non-interworking"),
			    abfd);
      else
	/* xgettext: c-format */
	FUNC10 (FUNC9("Warning: Clearing the interworking flag of %B due to outside request"),
			    abfd);
      flag = 0;
    }

  FUNC8 (abfd, flag);

  return TRUE;
}