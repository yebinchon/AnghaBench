#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sec_ptr ;
typedef  scalar_t__ file_ptr ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int bfd_boolean ;
struct TYPE_10__ {int /*<<< orphan*/  output_has_begun; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_9__ {scalar_t__ filepos; int /*<<< orphan*/  lma; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int TRUE ; 
 int /*<<< orphan*/  _LIB ; 
 int FUNC1 (void const*,int,TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (bfd * abfd,
			   sec_ptr section,
			   const void * location,
			   file_ptr offset,
			   bfd_size_type count)
{
  if (! abfd->output_has_begun)	/* Set by bfd.c handler.  */
    {
      if (! FUNC4 (abfd))
	return FALSE;
    }

#if defined(_LIB) && !defined(TARG_AUX)
   /* The physical address field of a .lib section is used to hold the
      number of shared libraries in the section.  This code counts the
      number of sections being written, and increments the lma field
      with the number.

      I have found no documentation on the contents of this section.
      Experimentation indicates that the section contains zero or more
      records, each of which has the following structure:

      - a (four byte) word holding the length of this record, in words,
      - a word that always seems to be set to "2",
      - the path to a shared library, null-terminated and then padded
        to a whole word boundary.

      bfd_assert calls have been added to alert if an attempt is made
      to write a section which doesn't follow these assumptions.  The
      code has been tested on ISC 4.1 by me, and on SCO by Robert Lipe
      <robertl@arnet.com> (Thanks!).

      Gvran Uddeborg <gvran@uddeborg.pp.se>.  */
    if (strcmp (section->name, _LIB) == 0)
      {
	bfd_byte *rec, *recend;

	rec = (bfd_byte *) location;
	recend = rec + count;
	while (rec < recend)
	  {
	    ++section->lma;
	    rec += bfd_get_32 (abfd, rec) * 4;
	  }

	BFD_ASSERT (rec == recend);
      }
#endif

  /* Don't write out bss sections - one way to do this is to
       see if the filepos has not been set.  */
  if (section->filepos == 0)
    return TRUE;

  if (FUNC3 (abfd, section->filepos + offset, SEEK_SET) != 0)
    return FALSE;

  if (count == 0)
    return TRUE;

  return FUNC1 (location, count, abfd) == count;
}