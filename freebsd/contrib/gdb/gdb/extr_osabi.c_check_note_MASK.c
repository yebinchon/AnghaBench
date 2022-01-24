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
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 unsigned long MAX_NOTESZ ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 unsigned long FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5 (bfd *abfd, asection *sect, const char *note,
	    const char *name, unsigned long descsz, unsigned long type)
{
  unsigned long notesz;
  unsigned long rdescsz;

  /* Calculate the size of this note.  */
  notesz = 4 * 3;	/* namelen, optlen, type */
  notesz += FUNC4 (name) + 1;
  notesz = ((notesz + 3) & ~3);

  /* If this assertion triggers, increase MAX_NOTESZ.  */
  FUNC2 (notesz <= MAX_NOTESZ);

  /* Check whether SECT is big enough to comtain the complete note.  */
  if (notesz > FUNC1 (abfd, sect))
    return 0;

  /* Check the note name.  */
  if (FUNC0 (abfd, note) != (FUNC4 (name) + 1)
      || FUNC3 (note + 12, name) != 0)
    return 0;

  /* Check the descriptor size.  */
  rdescsz = FUNC0 (abfd, note + 4);
  if (descsz != (unsigned long)-1 && rdescsz != descsz)
    return 0;

  notesz += rdescsz;
  notesz = ((notesz + 3) & ~3);

  /* Check whether SECT is big enough to comtain the complete note.  */
  if (notesz > FUNC1 (abfd, sect))
    return 0;

  /* Check the note type.  */
  if (FUNC0 (abfd, note + 8) != type)
    return 0;

  return 1;
}