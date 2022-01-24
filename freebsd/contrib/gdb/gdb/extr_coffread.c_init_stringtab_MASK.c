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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char*,int) ; 
 char* stringtab ; 
 int /*<<< orphan*/  symfile_bfd ; 
 scalar_t__ FUNC5 (long) ; 

__attribute__((used)) static int
FUNC6 (bfd *abfd, long offset)
{
  long length;
  int val;
  unsigned char lengthbuf[4];

  FUNC3 ();

  /* If the file is stripped, the offset might be zero, indicating no
     string table.  Just return with `stringtab' set to null. */
  if (offset == 0)
    return 0;

  if (FUNC2 (abfd, offset, 0) < 0)
    return -1;

  val = FUNC0 ((char *) lengthbuf, sizeof lengthbuf, abfd);
  length = FUNC1 (symfile_bfd, lengthbuf);

  /* If no string table is needed, then the file may end immediately
     after the symbols.  Just return with `stringtab' set to null. */
  if (val != sizeof lengthbuf || length < sizeof lengthbuf)
    return 0;

  stringtab = (char *) FUNC5 (length);
  /* This is in target format (probably not very useful, and not currently
     used), not host format.  */
  FUNC4 (stringtab, lengthbuf, sizeof lengthbuf);
  if (length == sizeof length)	/* Empty table -- just the count */
    return 0;

  val = FUNC0 (stringtab + sizeof lengthbuf, length - sizeof lengthbuf,
		   abfd);
  if (val != length - sizeof lengthbuf || stringtab[length - 1] != '\0')
    return -1;

  return 0;
}