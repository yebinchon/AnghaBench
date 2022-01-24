#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_21__ {TYPE_1__* xvec; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_20__ {scalar_t__ flavour; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,TYPE_2__*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_coff_flavour ; 

__attribute__((used)) static bfd_boolean
FUNC16 (bfd * ibfd, bfd * obfd)
{
  FUNC3 (ibfd != NULL && obfd != NULL);

  if (ibfd == obfd)
    return TRUE;

  /* If the two formats are different we cannot merge anything.
     This is not an error, since it is permissable to change the
     input and output formats.  */
  if (   ibfd->xvec->flavour != bfd_target_coff_flavour
      || obfd->xvec->flavour != bfd_target_coff_flavour)
    return TRUE;

  /* Determine what should happen if the input ARM architecture
     does not match the output ARM architecture.  */
  if (! FUNC11 (ibfd, obfd))
    return FALSE;

  /* Verify that the APCS is the same for the two BFDs.  */
  if (FUNC2 (ibfd))
    {
      if (FUNC2 (obfd))
	{
	  /* If the src and dest have different APCS flag bits set, fail.  */
	  if (FUNC0 (obfd) != FUNC0 (ibfd))
	    {
	      FUNC10
		/* xgettext: c-format */
		(FUNC9("ERROR: %B is compiled for APCS-%d, whereas %B is compiled for APCS-%d"),
		 ibfd, obfd,
		 FUNC0 (ibfd) ? 26 : 32,
		 FUNC0 (obfd) ? 26 : 32
		 );

	      FUNC15 (bfd_error_wrong_format);
	      return FALSE;
	    }

	  if (FUNC1 (obfd) != FUNC1 (ibfd))
	    {
	      const char *msg;

	      if (FUNC1 (ibfd))
		/* xgettext: c-format */
		msg = FUNC9("ERROR: %B passes floats in float registers, whereas %B passes them in integer registers");
	      else
		/* xgettext: c-format */
		msg = FUNC9("ERROR: %B passes floats in integer registers, whereas %B passes them in float registers");

	      FUNC10 (msg, ibfd, obfd);

	      FUNC15 (bfd_error_wrong_format);
	      return FALSE;
	    }

	  if (FUNC6 (obfd) != FUNC6 (ibfd))
	    {
	      const char * msg;

	      if (FUNC6 (ibfd))
		/* xgettext: c-format */
		msg = FUNC9("ERROR: %B is compiled as position independent code, whereas target %B is absolute position");
	      else
		/* xgettext: c-format */
		msg = FUNC9("ERROR: %B is compiled as absolute position code, whereas target %B is position independent");
	      FUNC10 (msg, ibfd, obfd);

	      FUNC15 (bfd_error_wrong_format);
	      return FALSE;
	    }
	}
      else
	{
	  FUNC7 (obfd, FUNC0 (ibfd) | FUNC1 (ibfd) | FUNC6 (ibfd));

	  /* Set up the arch and fields as well as these are probably wrong.  */
	  FUNC14 (obfd, FUNC12 (ibfd), FUNC13 (ibfd));
	}
    }

  /* Check the interworking support.  */
  if (FUNC5 (ibfd))
    {
      if (FUNC5 (obfd))
	{
	  /* If the src and dest differ in their interworking issue a warning.  */
	  if (FUNC4 (obfd) != FUNC4 (ibfd))
	    {
	      const char * msg;

	      if (FUNC4 (ibfd))
		/* xgettext: c-format */
		msg = FUNC9("Warning: %B supports interworking, whereas %B does not");
	      else
		/* xgettext: c-format */
		msg = FUNC9("Warning: %B does not support interworking, whereas %B does");

	      FUNC10 (msg, ibfd, obfd);
	    }
	}
      else
	{
	  FUNC8 (obfd, FUNC4 (ibfd));
	}
    }

  return TRUE;
}