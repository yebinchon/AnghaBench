#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_size; } ;
struct TYPE_4__ {int direction; int /*<<< orphan*/ * iostream; void* opened_once; int /*<<< orphan*/  filename; void* cacheable; } ;
typedef  TYPE_1__ bfd ;
typedef  void* PTR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ BFD_CACHE_MAX_OPEN ; 
 int /*<<< orphan*/  FOPEN_RB ; 
 int /*<<< orphan*/  FOPEN_RUB ; 
 int /*<<< orphan*/  FOPEN_WUB ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  both_direction 131 
 int /*<<< orphan*/  FUNC2 () ; 
#define  no_direction 130 
 scalar_t__ open_files ; 
#define  read_direction 129 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  write_direction 128 

FILE *
FUNC6 (bfd *abfd)
{
  abfd->cacheable = TRUE;	/* Allow it to be closed later.  */

  if (open_files >= BFD_CACHE_MAX_OPEN)
    {
      if (! FUNC2 ())
	return NULL;
    }

  switch (abfd->direction)
    {
    case read_direction:
    case no_direction:
      abfd->iostream = (PTR) FUNC3 (abfd->filename, FOPEN_RB);
      break;
    case both_direction:
    case write_direction:
      if (abfd->opened_once)
	{
	  abfd->iostream = (PTR) FUNC3 (abfd->filename, FOPEN_RUB);
	  if (abfd->iostream == NULL)
	    abfd->iostream = (PTR) FUNC3 (abfd->filename, FOPEN_WUB);
	}
      else
	{
	  /* Create the file.

	     Some operating systems won't let us overwrite a running
	     binary.  For them, we want to unlink the file first.

	     However, gcc 2.95 will create temporary files using
	     O_EXCL and tight permissions to prevent other users from
	     substituting other .o files during the compilation.  gcc
	     will then tell the assembler to use the newly created
	     file as an output file.  If we unlink the file here, we
	     open a brief window when another user could still
	     substitute a file.

	     So we unlink the output file if and only if it has
	     non-zero size.  */
#ifndef __MSDOS__
	  /* Don't do this for MSDOS: it doesn't care about overwriting
	     a running binary, but if this file is already open by
	     another BFD, we will be in deep trouble if we delete an
	     open file.  In fact, objdump does just that if invoked with
	     the --info option.  */
	  struct stat s;

	  if (FUNC4 (abfd->filename, &s) == 0 && s.st_size != 0)
	    FUNC5 (abfd->filename);
#endif
	  abfd->iostream = (PTR) FUNC3 (abfd->filename, FOPEN_WUB);
	  abfd->opened_once = TRUE;
	}
      break;
    }

  if (abfd->iostream == NULL)
    FUNC1 (bfd_error_system_call);
  else
    {
      if (! FUNC0 (abfd))
	return NULL;
    }

  return (FILE *) abfd->iostream;
}