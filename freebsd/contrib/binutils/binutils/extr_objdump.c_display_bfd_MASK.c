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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char***) ; 
 int /*<<< orphan*/  bfd_core ; 
 scalar_t__ bfd_error_file_ambiguously_recognized ; 
 scalar_t__ bfd_error_file_not_recognized ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (bfd *abfd)
{
  char **matching;

  if (FUNC0 (abfd, bfd_object, &matching))
    {
      FUNC3 (abfd);
      return;
    }

  if (FUNC1 () == bfd_error_file_ambiguously_recognized)
    {
      FUNC6 (FUNC2 (abfd));
      FUNC5 (matching);
      FUNC4 (matching);
      return;
    }

  if (FUNC1 () != bfd_error_file_not_recognized)
    {
      FUNC6 (FUNC2 (abfd));
      return;
    }

  if (FUNC0 (abfd, bfd_core, &matching))
    {
      FUNC3 (abfd);
      return;
    }

  FUNC6 (FUNC2 (abfd));

  if (FUNC1 () == bfd_error_file_ambiguously_recognized)
    {
      FUNC5 (matching);
      FUNC4 (matching);
    }
}