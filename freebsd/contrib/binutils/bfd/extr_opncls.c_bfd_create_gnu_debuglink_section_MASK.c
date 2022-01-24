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
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  GNU_DEBUGLINK ; 
 int SEC_DEBUGGING ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 

asection *
FUNC6 (bfd *abfd, const char *filename)
{
  asection *sect;
  bfd_size_type debuglink_size;
  flagword flags;

  if (abfd == NULL || filename == NULL)
    {
      FUNC2 (bfd_error_invalid_operation);
      return NULL;
    }

  /* Strip off any path components in filename.  */
  filename = FUNC4 (filename);

  sect = FUNC0 (abfd, GNU_DEBUGLINK);
  if (sect)
    {
      /* Section already exists.  */
      FUNC2 (bfd_error_invalid_operation);
      return NULL;
    }

  flags = SEC_HAS_CONTENTS | SEC_READONLY | SEC_DEBUGGING;
  sect = FUNC1 (abfd, GNU_DEBUGLINK, flags);
  if (sect == NULL)
    return NULL;

  debuglink_size = FUNC5 (filename) + 1;
  debuglink_size += 3;
  debuglink_size &= ~3;
  debuglink_size += 4;

  if (! FUNC3 (abfd, sect, debuglink_size))
    /* XXX Should we delete the section from the bfd ?  */
    return NULL;

  return sect;
}