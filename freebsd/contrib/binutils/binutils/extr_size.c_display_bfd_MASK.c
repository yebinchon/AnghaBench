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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  bfd_archive ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char***) ; 
 int /*<<< orphan*/  bfd_core ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_error_file_ambiguously_recognized ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int return_code ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC12 (bfd *abfd)
{
  char **matching;

  if (FUNC0 (abfd, bfd_archive))
    /* An archive within an archive.  */
    return;

  if (FUNC1 (abfd, bfd_object, &matching))
    {
      FUNC9 (abfd);
      FUNC10 ("\n");
      return;
    }

  if (FUNC3 () == bfd_error_file_ambiguously_recognized)
    {
      FUNC5 (FUNC4 (abfd));
      FUNC8 (matching);
      FUNC7 (matching);
      return_code = 3;
      return;
    }

  if (FUNC1 (abfd, bfd_core, &matching))
    {
      const char *core_cmd;

      FUNC9 (abfd);
      FUNC6 (" (core file", stdout);

      core_cmd = FUNC2 (abfd);
      if (core_cmd)
	FUNC10 (" invoked as %s", core_cmd);

      FUNC11 (")\n");
      return;
    }

  FUNC5 (FUNC4 (abfd));

  if (FUNC3 () == bfd_error_file_ambiguously_recognized)
    {
      FUNC8 (matching);
      FUNC7 (matching);
    }

  return_code = 3;
}