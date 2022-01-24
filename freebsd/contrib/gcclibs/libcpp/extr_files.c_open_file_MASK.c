#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  st_mode; } ;
struct TYPE_4__ {char* path; int fd; scalar_t__ err_no; TYPE_3__ st; } ;
typedef  TYPE_1__ _cpp_file ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int O_BINARY ; 
 int O_NOCTTY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int,TYPE_3__*) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static bool
FUNC5 (_cpp_file *file)
{
  if (file->path[0] == '\0')
    {
      file->fd = 0;
      FUNC4 ();
    }
  else
    file->fd = FUNC3 (file->path, O_RDONLY | O_NOCTTY | O_BINARY, 0666);

  if (file->fd != -1)
    {
      if (FUNC2 (file->fd, &file->st) == 0)
	{
	  if (!FUNC0 (file->st.st_mode))
	    {
	      file->err_no = 0;
	      return true;
	    }

	  /* Ignore a directory and continue the search.  The file we're
	     looking for may be elsewhere in the search path.  */
	  errno = ENOENT;
	}

      FUNC1 (file->fd);
      file->fd = -1;
    }
  else if (errno == ENOTDIR)
    errno = ENOENT;

  file->err_no = errno;

  return false;
}