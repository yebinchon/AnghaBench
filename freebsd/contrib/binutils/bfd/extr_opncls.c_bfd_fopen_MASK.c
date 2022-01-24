#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_target ;
struct TYPE_8__ {char const* filename; int /*<<< orphan*/  opened_once; int /*<<< orphan*/  direction; int /*<<< orphan*/ * iostream; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/ * FUNC3 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  both_direction ; 
 int /*<<< orphan*/ * FUNC6 (int,char const*) ; 
 int /*<<< orphan*/  read_direction ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/  write_direction ; 

bfd *
FUNC8 (const char *filename, const char *target, const char *mode, int fd)
{
  bfd *nbfd;
  const bfd_target *target_vec;

  nbfd = FUNC1 ();
  if (nbfd == NULL)
    return NULL;

  target_vec = FUNC3 (target, nbfd);
  if (target_vec == NULL)
    {
      FUNC0 (nbfd);
      return NULL;
    }
  
#ifdef HAVE_FDOPEN
  if (fd != -1)
    nbfd->iostream = fdopen (fd, mode);
  else
#endif
    nbfd->iostream = FUNC7 (filename, mode);
  if (nbfd->iostream == NULL)
    {
      FUNC5 (bfd_error_system_call);
      FUNC0 (nbfd);
      return NULL;
    }

  /* OK, put everything where it belongs.  */
  nbfd->filename = filename;

  /* Figure out whether the user is opening the file for reading,
     writing, or both, by looking at the MODE argument.  */
  if ((mode[0] == 'r' || mode[0] == 'w' || mode[0] == 'a') 
      && mode[1] == '+')
    nbfd->direction = both_direction;
  else if (mode[0] == 'r')
    nbfd->direction = read_direction;
  else
    nbfd->direction = write_direction;

  if (! FUNC2 (nbfd))
    {
      FUNC0 (nbfd);
      return NULL;
    }
  nbfd->opened_once = TRUE;
  /* If we opened the file by name, mark it cacheable; we can close it
     and reopen it later.  However, if a file descriptor was provided,
     then it may have been opened with special flags that make it
     unsafe to close and reopen the file.  */
  if (fd == -1)
    (void) FUNC4 (nbfd, TRUE);

  return nbfd;
}