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
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 char* FALSE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int exit_status ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC11 (bfd *abfd, const char *sect_name, bfd_size_type *size_ptr)
{
  asection *stabsect;
  bfd_size_type size;
  char *contents;

  stabsect = FUNC4 (abfd, sect_name);
  if (stabsect == NULL)
    {
      FUNC9 (FUNC0("No %s section present\n\n"), sect_name);
      return FALSE;
    }

  size = FUNC6 (abfd, stabsect);
  contents  = FUNC10 (size);

  if (! FUNC5 (abfd, stabsect, contents, 0, size))
    {
      FUNC8 (FUNC0("Reading %s section of %s failed: %s"),
		 sect_name, FUNC3 (abfd),
		 FUNC1 (FUNC2 ()));
      FUNC7 (contents);
      exit_status = 1;
      return NULL;
    }

  *size_ptr = size;

  return contents;
}