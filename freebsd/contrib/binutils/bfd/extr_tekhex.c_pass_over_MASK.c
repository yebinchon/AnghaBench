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
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int MAXCHUNK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TRUE ; 
 unsigned int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *abfd, bfd_boolean (*func) (bfd *, int, char *))
{
  unsigned int chars_on_line;
  bfd_boolean eof = FALSE;

  /* To the front of the file.  */
  if (FUNC3 (abfd, (file_ptr) 0, SEEK_SET) != 0)
    return FALSE;
  while (! eof)
    {
      char src[MAXCHUNK];
      char type;

      /* Find first '%'.  */
      eof = (bfd_boolean) (FUNC2 (src, (bfd_size_type) 1, abfd) != 1);
      while (*src != '%' && !eof)
	eof = (bfd_boolean) (FUNC2 (src, (bfd_size_type) 1, abfd) != 1);

      if (eof)
	break;

      /* Fetch the type and the length and the checksum.  */
      if (FUNC2 (src, (bfd_size_type) 5, abfd) != 5)
	return FALSE;

      type = src[2];

      if (!FUNC1 (src[0]) || !FUNC1 (src[1]))
	break;

      /* Already read five chars.  */
      chars_on_line = FUNC0 (src) - 5;

      if (chars_on_line >= MAXCHUNK)
	return FALSE;

      if (FUNC2 (src, (bfd_size_type) chars_on_line, abfd) != chars_on_line)
	return FALSE;

      /* Put a null at the end.  */
      src[chars_on_line] = 0;

      if (!func (abfd, type, src))
	return FALSE;
    }

  return TRUE;
}