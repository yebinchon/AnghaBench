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
typedef  scalar_t__ bfd_error_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bfd_archive ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char***) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_core ; 
 scalar_t__ bfd_error_file_ambiguously_recognized ; 
 scalar_t__ FUNC4 () ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char**) ; 
 int FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (char**) ; 
 int status ; 

__attribute__((used)) static void
FUNC15 (const char *input_filename, const char *output_filename,
	   const char *input_target,   const char *output_target)
{
  bfd *ibfd;
  char **obj_matching;
  char **core_matching;

  if (FUNC13 (input_filename) < 1)
    {
      status = 1;
      return;
    }

  /* To allow us to do "strip *" without dying on the first
     non-object file, failures are nonfatal.  */
  ibfd = FUNC7 (input_filename, input_target);
  if (ibfd == NULL)
    FUNC0 (input_filename);

  if (FUNC1 (ibfd, bfd_archive))
    {
      bfd_boolean force_output_target;
      bfd *obfd;

      /* bfd_get_target does not return the correct value until
         bfd_check_format succeeds.  */
      if (output_target == NULL)
	{
	  output_target = FUNC5 (ibfd);
	  force_output_target = FALSE;
	}
      else
	force_output_target = TRUE;

      obfd = FUNC8 (output_filename, output_target);
      if (obfd == NULL)
	FUNC0 (output_filename);

      FUNC10 (ibfd, obfd, output_target, force_output_target);
    }
  else if (FUNC2 (ibfd, bfd_object, &obj_matching))
    {
      bfd *obfd;
    do_copy:

      /* bfd_get_target does not return the correct value until
         bfd_check_format succeeds.  */
      if (output_target == NULL)
	output_target = FUNC5 (ibfd);

      obfd = FUNC8 (output_filename, output_target);
      if (obfd == NULL)
	FUNC0 (output_filename);

      if (! FUNC11 (ibfd, obfd))
	status = 1;

      if (!FUNC3 (obfd))
	FUNC0 (output_filename);

      if (!FUNC3 (ibfd))
	FUNC0 (input_filename);

    }
  else
    {
      bfd_error_type obj_error = FUNC4 ();
      bfd_error_type core_error;

      if (FUNC2 (ibfd, bfd_core, &core_matching))
	{
	  /* This probably can't happen..  */
	  if (obj_error == bfd_error_file_ambiguously_recognized)
	    FUNC12 (obj_matching);
	  goto do_copy;
	}

      core_error = FUNC4 ();
      /* Report the object error in preference to the core error.  */
      if (obj_error != core_error)
	FUNC9 (obj_error);

      FUNC6 (input_filename);

      if (obj_error == bfd_error_file_ambiguously_recognized)
	{
	  FUNC14 (obj_matching);
	  FUNC12 (obj_matching);
	}
      if (core_error == bfd_error_file_ambiguously_recognized)
	{
	  FUNC14 (core_matching);
	  FUNC12 (core_matching);
	}

      status = 1;
    }
}