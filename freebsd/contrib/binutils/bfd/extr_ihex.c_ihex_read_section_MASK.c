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
typedef  int bfd_size_type ;
typedef  char bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int size; int /*<<< orphan*/  filepos; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EOF ; 
 int /*<<< orphan*/  FALSE ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 char* FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC12 (bfd *abfd, asection *section, bfd_byte *contents)
{
  int c;
  bfd_byte *p;
  bfd_byte *buf = NULL;
  size_t bufsize;
  bfd_boolean error;

  if (FUNC6 (abfd, section->filepos, SEEK_SET) != 0)
    goto error_return;

  p = contents;
  bufsize = 0;
  error = FALSE;
  while ((c = FUNC9 (abfd, &error)) != EOF)
    {
      char hdr[8];
      unsigned int len;
      unsigned int type;
      unsigned int i;

      if (c == '\r' || c == '\n')
	continue;

      /* This is called after ihex_scan has succeeded, so we ought to
         know the exact format.  */
      FUNC0 (c == ':');

      if (FUNC4 (hdr, (bfd_size_type) 8, abfd) != 8)
	goto error_return;

      len = FUNC1 (hdr);
      type = FUNC1 (hdr + 6);

      /* We should only see type 0 records here.  */
      if (type != 0)
	{
	  FUNC3)
	    (FUNC2("%B: internal error in ihex_read_section"), abfd);
	  FUNC7 (bfd_error_bad_value);
	  goto error_return;
	}

      if (len * 2 > bufsize)
	{
	  buf = FUNC5 (buf, (bfd_size_type) len * 2);
	  if (buf == NULL)
	    goto error_return;
	  bufsize = len * 2;
	}

      if (FUNC4 (buf, (bfd_size_type) len * 2, abfd) != len * 2)
	goto error_return;

      for (i = 0; i < len; i++)
	*p++ = FUNC1 (buf + 2 * i);
      if ((bfd_size_type) (p - contents) >= section->size)
	{
	  /* We've read everything in the section.  */
	  if (buf != NULL)
	    FUNC8 (buf);
	  return TRUE;
	}

      /* Skip the checksum.  */
      if (FUNC4 (buf, (bfd_size_type) 2, abfd) != 2)
	goto error_return;
    }

  if ((bfd_size_type) (p - contents) < section->size)
    {
      FUNC3)
	(FUNC2("%B: bad section length in ihex_read_section"), abfd);
      FUNC7 (bfd_error_bad_value);
      goto error_return;
    }

  if (buf != NULL)
    FUNC8 (buf);

  return TRUE;

 error_return:
  if (buf != NULL)
    FUNC8 (buf);
  return FALSE;
}