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
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  bfd_archive ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char***) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_error_file_ambiguously_recognized ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 
 int FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 char** syms ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static int
FUNC17 (const char *file_name, const char *section_name,
	      const char *target)
{
  bfd *abfd;
  asection *section;
  char **matching;

  if (FUNC12 (file_name) < 1)
    return 1;

  abfd = FUNC9 (file_name, target);
  if (abfd == NULL)
    FUNC4 (file_name);

  if (FUNC1 (abfd, bfd_archive))
    FUNC10 (FUNC0("%s: cannot get addresses from archive"), file_name);

  if (! FUNC2 (abfd, bfd_object, &matching))
    {
      FUNC8 (FUNC6 (abfd));
      if (FUNC5 () == bfd_error_file_ambiguously_recognized)
	{
	  FUNC13 (matching);
	  FUNC11 (matching);
	}
      FUNC16 (1);
    }

  if (section_name != NULL)
    {
      section = FUNC7 (abfd, section_name);
      if (section == NULL)
	FUNC10 (FUNC0("%s: cannot find section %s"), file_name, section_name);
    }
  else
    section = NULL;

  FUNC14 (abfd);

  FUNC15 (abfd, section);

  if (syms != NULL)
    {
      FUNC11 (syms);
      syms = NULL;
    }

  FUNC3 (abfd);

  return 0;
}