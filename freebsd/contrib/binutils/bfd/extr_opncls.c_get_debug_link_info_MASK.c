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
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  unsigned long bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 int /*<<< orphan*/  GNU_DEBUGLINK ; 
 unsigned long FUNC1 (unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6 (bfd *abfd, unsigned long *crc32_out)
{
  asection *sect;
  unsigned long crc32;
  bfd_byte *contents;
  int crc_offset;
  char *name;

  FUNC0 (abfd);
  FUNC0 (crc32_out);

  sect = FUNC2 (abfd, GNU_DEBUGLINK);

  if (sect == NULL)
    return NULL;

  if (!FUNC3 (abfd, sect, &contents))
    {
      if (contents != NULL)
	FUNC4 (contents);
      return NULL;
    }

  /* Crc value is stored after the filename, aligned up to 4 bytes.  */
  name = (char *) contents;
  crc_offset = FUNC5 (name) + 1;
  crc_offset = (crc_offset + 3) & ~3;

  crc32 = FUNC1 (abfd, contents + crc_offset);

  *crc32_out = crc32;
  return name;
}