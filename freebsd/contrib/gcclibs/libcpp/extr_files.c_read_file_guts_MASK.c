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
typedef  int ssize_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_5__ {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct TYPE_4__ {int buffer_valid; TYPE_3__ st; int /*<<< orphan*/  buffer; int /*<<< orphan*/  path; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ _cpp_file ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 int /*<<< orphan*/  CPP_DL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ SSIZE_MAX ; 
 scalar_t__ FUNC1 (TYPE_3__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int buf ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  input_charset ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int uchar ; 

__attribute__((used)) static bool
FUNC11 (cpp_reader *pfile, _cpp_file *file)
{
  ssize_t size, total, count;
  off_t offset;
  uchar *buf;
  bool regular;

  if (FUNC2 (file->st.st_mode))
    {
      FUNC8 (pfile, CPP_DL_ERROR, "%s is a block device", file->path);
      return false;
    }

  regular = FUNC3 (file->st.st_mode);
  if (regular)
    {
      /* off_t might have a wider range than ssize_t - in other words,
	 the max size of a file might be bigger than the address
	 space.  We can't handle a file that large.  (Anyone with
	 a single source file bigger than 2GB needs to rethink
	 their coding style.)  Some systems (e.g. AIX 4.1) define
	 SSIZE_MAX to be much smaller than the actual range of the
	 type.  Use INTTYPE_MAXIMUM unconditionally to ensure this
	 does not bite us.  */
      if (file->st.st_size > SSIZE_MAX)
	{
	  FUNC8 (pfile, CPP_DL_ERROR, "%s is too large", file->path);
	  return false;
	}

      size = file->st.st_size;

      if ((offset = FUNC9(file->fd, 0, SEEK_CUR)) < 0)
	{
	  FUNC8 (pfile, CPP_DL_ERROR, "%s has no current position",
	    file->path);
	  return false;
	}
      else if (offset > SSIZE_MAX || (ssize_t)offset > size)
	{
	  FUNC8 (pfile, CPP_DL_ERROR, "current position of %s is too large",
	    file->path);
	  return false;
	}

      size -= (ssize_t)offset;
    }
  else
    /* 8 kilobytes is a sensible starting size.  It ought to be bigger
       than the kernel pipe buffer, and it's definitely bigger than
       the majority of C source files.  */
    size = 8 * 1024;

  buf = FUNC4 (uchar, size + 1);
  total = 0;
  while ((count = FUNC10 (file->fd, buf + total, size - total)) > 0)
    {
      total += count;

      if (total == size)
	{
	  if (regular)
	    break;
	  size *= 2;
	  buf = FUNC5 (uchar, buf, size + 1);
	}
    }

  if (count < 0)
    {
      FUNC7 (pfile, CPP_DL_ERROR, file->path);
      return false;
    }

  if (regular && total != size && FUNC1 (file->st))
    FUNC8 (pfile, CPP_DL_WARNING,
	       "%s is shorter than expected", file->path);

  file->buffer = FUNC6 (pfile, FUNC0 (pfile, input_charset),
				     buf, size, total, &file->st.st_size);
  file->buffer_valid = true;

  return true;
}