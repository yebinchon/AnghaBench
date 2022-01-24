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
struct stat {size_t st_size; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_atime; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t BUFSIZE ; 
 int /*<<< orphan*/  FOPEN_WB ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * output_file ; 
 char* output_filename ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ preserve_dates ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 char* FUNC17 (size_t) ; 

void
FUNC18 (bfd *abfd)
{
  FILE *ostream;
  char *cbuf = FUNC17 (BUFSIZE);
  size_t nread, tocopy;
  size_t ncopied = 0;
  size_t size;
  struct stat buf;

  if (FUNC5 (abfd, &buf) != 0)
    /* xgettext:c-format */
    FUNC7 (FUNC0("internal stat error on %s"), FUNC2 (abfd));
  size = buf.st_size;

  if (verbose)
    FUNC13 ("x - %s\n", FUNC2 (abfd));

  FUNC4 (abfd, (file_ptr) 0, SEEK_SET);

  ostream = NULL;
  if (size == 0)
    {
      /* Seems like an abstraction violation, eh?  Well it's OK! */
      output_filename = FUNC2 (abfd);

      ostream = FUNC9 (FUNC2 (abfd), FOPEN_WB);
      if (ostream == NULL)
	{
	  FUNC12 (FUNC2 (abfd));
	  FUNC16 (1);
	}

      output_file = ostream;
    }
  else
    while (ncopied < size)
      {
	tocopy = size - ncopied;
	if (tocopy > BUFSIZE)
	  tocopy = BUFSIZE;

	nread = FUNC1 (cbuf, (bfd_size_type) tocopy, abfd);
	if (nread != tocopy)
	  /* xgettext:c-format */
	  FUNC7 (FUNC0("%s is not a valid archive"),
		 FUNC2 (FUNC3 (abfd)));

	/* See comment above; this saves disk arm motion */
	if (ostream == NULL)
	  {
	    /* Seems like an abstraction violation, eh?  Well it's OK! */
	    output_filename = FUNC2 (abfd);

	    ostream = FUNC9 (FUNC2 (abfd), FOPEN_WB);
	    if (ostream == NULL)
	      {
		FUNC12 (FUNC2 (abfd));
		FUNC16 (1);
	      }

	    output_file = ostream;
	  }

	/* fwrite in mingw32 may return int instead of size_t. Cast
	   the return value to size_t to avoid comparison between
	   signed and unsigned values.  */
	if ((size_t) FUNC11 (cbuf, 1, nread, ostream) != nread)
	  FUNC7 ("%s: %s", output_filename, FUNC15 (errno));
	ncopied += tocopy;
      }

  if (ostream != NULL)
    FUNC8 (ostream);

  output_file = NULL;
  output_filename = NULL;

  FUNC6 (FUNC2 (abfd), buf.st_mode);

  if (preserve_dates)
    {
      /* Set access time to modification time.  Only st_mtime is
	 initialized by bfd_stat_arch_elt.  */
      buf.st_atime = buf.st_mtime;
      FUNC14 (FUNC2 (abfd), &buf);
    }

  FUNC10 (cbuf);
}