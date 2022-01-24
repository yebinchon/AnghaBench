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
struct stat {long st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*) ; 
 scalar_t__ verbose ; 
 char* FUNC12 (int) ; 

__attribute__((used)) static bfd_boolean
FUNC13 (bfd *ibfd, bfd *obfd)
{
  char *cbuf;
  int tocopy;
  long ncopied;
  long size;
  struct stat buf;

  if (FUNC7 (ibfd, &buf) != 0)
    {
      FUNC5 (FUNC3 (ibfd));
      return FALSE;
    }

  size = buf.st_size;
  if (size < 0)
    {
      FUNC10 (FUNC0("stat returns negative size for `%s'"),
		 FUNC3 (ibfd));
      return FALSE;
    }

  if (FUNC6 (ibfd, (file_ptr) 0, SEEK_SET) != 0)
    {
      FUNC5 (FUNC3 (ibfd));
      return FALSE;
    }

  if (verbose)
    FUNC11 (FUNC0("copy from `%s' [unknown] to `%s' [unknown]\n"),
	    FUNC3 (ibfd), FUNC4 (obfd));

  cbuf = FUNC12 (BUFSIZE);
  ncopied = 0;
  while (ncopied < size)
    {
      tocopy = size - ncopied;
      if (tocopy > BUFSIZE)
	tocopy = BUFSIZE;

      if (FUNC1 (cbuf, (bfd_size_type) tocopy, ibfd)
	  != (bfd_size_type) tocopy)
	{
	  FUNC5 (FUNC3 (ibfd));
	  FUNC9 (cbuf);
	  return FALSE;
	}

      if (FUNC2 (cbuf, (bfd_size_type) tocopy, obfd)
	  != (bfd_size_type) tocopy)
	{
	  FUNC5 (FUNC4 (obfd));
	  FUNC9 (cbuf);
	  return FALSE;
	}

      ncopied += tocopy;
    }

  FUNC8 (FUNC4 (obfd), buf.st_mode);
  FUNC9 (cbuf);
  return TRUE;
}