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
typedef  int bfd_vma ;
typedef  int bfd_size_type ;
typedef  int bfd_byte ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_3__ {int size; int vma; int /*<<< orphan*/  filepos; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EOF ; 
 scalar_t__ FALSE ; 
 int FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TRUE ; 
 unsigned int FUNC3 (int*,int,int /*<<< orphan*/ *) ; 
 int* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (bfd *abfd, asection *section, bfd_byte *contents)
{
  int c;
  bfd_size_type sofar = 0;
  bfd_boolean error = FALSE;
  bfd_byte *buf = NULL;
  size_t bufsize = 0;

  if (FUNC5 (abfd, section->filepos, SEEK_SET) != 0)
    goto error_return;

  while ((c = FUNC7 (abfd, &error)) != EOF)
    {
      bfd_byte hdr[3];
      unsigned int bytes;
      bfd_vma address;
      bfd_byte *data;

      if (c == '\r' || c == '\n')
	continue;

      /* This is called after srec_scan has already been called, so we
	 ought to know the exact format.  */
      FUNC0 (c == 'S');

      if (FUNC3 (hdr, (bfd_size_type) 3, abfd) != 3)
	goto error_return;

      FUNC0 (FUNC2 (hdr[1]) && FUNC2 (hdr[2]));

      bytes = FUNC1 (hdr + 1);

      if (bytes * 2 > bufsize)
	{
	  if (buf != NULL)
	    FUNC6 (buf);
	  buf = FUNC4 ((bfd_size_type) bytes * 2);
	  if (buf == NULL)
	    goto error_return;
	  bufsize = bytes * 2;
	}

      if (FUNC3 (buf, (bfd_size_type) bytes * 2, abfd) != bytes * 2)
	goto error_return;

      address = 0;
      data = buf;
      switch (hdr[0])
	{
	default:
	  FUNC0 (sofar == section->size);
	  if (buf != NULL)
	    FUNC6 (buf);
	  return TRUE;

	case '3':
	  address = FUNC1 (data);
	  data += 2;
	  --bytes;
	  /* Fall through.  */
	case '2':
	  address = (address << 8) | FUNC1 (data);
	  data += 2;
	  --bytes;
	  /* Fall through.  */
	case '1':
	  address = (address << 8) | FUNC1 (data);
	  data += 2;
	  address = (address << 8) | FUNC1 (data);
	  data += 2;
	  bytes -= 2;

	  if (address != section->vma + sofar)
	    {
	      /* We've come to the end of this section.  */
	      FUNC0 (sofar == section->size);
	      if (buf != NULL)
		FUNC6 (buf);
	      return TRUE;
	    }

	  /* Don't consider checksum.  */
	  --bytes;

	  while (bytes-- != 0)
	    {
	      contents[sofar] = FUNC1 (data);
	      data += 2;
	      ++sofar;
	    }

	  break;
	}
    }

  if (error)
    goto error_return;

  FUNC0 (sofar == section->size);

  if (buf != NULL)
    FUNC6 (buf);

  return TRUE;

 error_return:
  if (buf != NULL)
    FUNC6 (buf);
  return FALSE;
}