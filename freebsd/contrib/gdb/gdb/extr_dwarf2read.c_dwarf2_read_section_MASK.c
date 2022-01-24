#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct objfile {int /*<<< orphan*/  objfile_obstack; int /*<<< orphan*/ * obfd; } ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {int /*<<< orphan*/  filepos; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

char *
FUNC7 (struct objfile *objfile, asection *sectp)
{
  bfd *abfd = objfile->obfd;
  char *buf, *retbuf;
  bfd_size_type size = FUNC2 (sectp);

  if (size == 0)
    return NULL;

  buf = (char *) FUNC5 (&objfile->objfile_obstack, size);
  retbuf
    = (char *) FUNC6 (abfd, sectp, (bfd_byte *) buf);
  if (retbuf != NULL)
    return retbuf;

  if (FUNC3 (abfd, sectp->filepos, SEEK_SET) != 0
      || FUNC0 (buf, size, abfd) != size)
    FUNC4 ("Dwarf Error: Can't read DWARF data from '%s'",
	   FUNC1 (abfd));

  return buf;
}