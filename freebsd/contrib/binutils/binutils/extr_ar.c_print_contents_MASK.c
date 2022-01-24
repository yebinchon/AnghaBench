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
struct stat {size_t st_size; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 size_t BUFSIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 char* FUNC0 (char*) ; 
 size_t FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 
 char* FUNC11 (size_t) ; 

__attribute__((used)) static void
FUNC12 (bfd *abfd)
{
  size_t ncopied = 0;
  char *cbuf = FUNC11 (BUFSIZE);
  struct stat buf;
  size_t size;
  if (FUNC5 (abfd, &buf) != 0)
    /* xgettext:c-format */
    FUNC6 (FUNC0("internal stat error on %s"), FUNC2 (abfd));

  if (verbose)
    /* xgettext:c-format */
    FUNC9 (FUNC0("\n<%s>\n\n"), FUNC2 (abfd));

  FUNC4 (abfd, (file_ptr) 0, SEEK_SET);

  size = buf.st_size;
  while (ncopied < size)
    {

      size_t nread;
      size_t tocopy = size - ncopied;
      if (tocopy > BUFSIZE)
	tocopy = BUFSIZE;

      nread = FUNC1 (cbuf, (bfd_size_type) tocopy, abfd);
      if (nread != tocopy)
	/* xgettext:c-format */
	FUNC6 (FUNC0("%s is not a valid archive"),
	       FUNC2 (FUNC3 (abfd)));

      /* fwrite in mingw32 may return int instead of size_t. Cast the
	 return value to size_t to avoid comparison between signed and
	 unsigned values.  */
      if ((size_t) FUNC8 (cbuf, 1, nread, stdout) != nread)
	FUNC6 ("stdout: %s", FUNC10 (errno));
      ncopied += tocopy;
    }
  FUNC7 (cbuf);
}