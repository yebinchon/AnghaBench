#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {scalar_t__ size; int /*<<< orphan*/  filepos; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 char* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_error_no_debug_section ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC6 (bfd *abfd)
{
  char *debug_section;
  file_ptr position;
  bfd_size_type sec_size;

  asection *sect = FUNC2 (abfd, ".debug");

  if (!sect)
    {
      FUNC4 (bfd_error_no_debug_section);
      return NULL;
    }

  sec_size = sect->size;
  debug_section = FUNC0 (abfd, sec_size);
  if (debug_section == NULL)
    return NULL;

  /* Seek to the beginning of the `.debug' section and read it.
     Save the current position first; it is needed by our caller.
     Then read debug section and reset the file pointer.  */

  position = FUNC5 (abfd);
  if (FUNC3 (abfd, sect->filepos, SEEK_SET) != 0
      || FUNC1 (debug_section, sec_size, abfd) != sec_size
      || FUNC3 (abfd, position, SEEK_SET) != 0)
    return NULL;
  return debug_section;
}