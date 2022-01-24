#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct stat {unsigned int st_mode; } ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_12__ {int flags; scalar_t__ direction; int /*<<< orphan*/  filename; TYPE_1__* iovec; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_11__ {scalar_t__ (* bclose ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int BFD_IN_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int EXEC_P ; 
 scalar_t__ FALSE ; 
 unsigned int S_IXGRP ; 
 unsigned int S_IXOTH ; 
 unsigned int S_IXUSR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  _bfd_write_contents ; 
 int /*<<< orphan*/  _close_and_cleanup ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 unsigned int FUNC7 (unsigned int) ; 
 scalar_t__ write_direction ; 

bfd_boolean
FUNC8 (bfd *abfd)
{
  bfd_boolean ret;

  if (FUNC3 (abfd))
    {
      if (! FUNC1 (abfd, _bfd_write_contents, (abfd)))
	return FALSE;
    }

  if (! FUNC0 (abfd, _close_and_cleanup, (abfd)))
    return FALSE;

  /* FIXME: cagney/2004-02-15: Need to implement a BFD_IN_MEMORY io
     vector.  */
  if (!(abfd->flags & BFD_IN_MEMORY))
    ret = abfd->iovec->bclose (abfd);
  else
    ret = TRUE;

  /* If the file was open for writing and is now executable,
     make it so.  */
  if (ret
      && abfd->direction == write_direction
      && abfd->flags & EXEC_P)
    {
      struct stat buf;

      if (FUNC5 (abfd->filename, &buf) == 0)
	{
	  unsigned int mask = FUNC7 (0);

	  FUNC7 (mask);
	  FUNC4 (abfd->filename,
		 (0777
		  & (buf.st_mode | ((S_IXUSR | S_IXGRP | S_IXOTH) &~ mask))));
	}
    }

  FUNC2 (abfd);

  return ret;
}