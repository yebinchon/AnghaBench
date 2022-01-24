#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {unsigned int st_mode; } ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_5__ {scalar_t__ direction; int flags; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int EXEC_P ; 
 unsigned int S_IXGRP ; 
 unsigned int S_IXOTH ; 
 unsigned int S_IXUSR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 
 unsigned int FUNC4 (unsigned int) ; 
 scalar_t__ write_direction ; 

bfd_boolean
FUNC5 (bfd *abfd)
{
  bfd_boolean ret;

  ret = FUNC1 (abfd);

  /* If the file was open for writing and is now executable,
     make it so.  */
  if (ret
      && abfd->direction == write_direction
      && abfd->flags & EXEC_P)
    {
      struct stat buf;

      if (FUNC3 (abfd->filename, &buf) == 0)
	{
	  unsigned int mask = FUNC4 (0);

	  FUNC4 (mask);
	  FUNC2 (abfd->filename,
		 (0777
		  & (buf.st_mode | ((S_IXUSR | S_IXGRP | S_IXOTH) &~ mask))));
	}
    }

  FUNC0 (abfd);

  return ret;
}