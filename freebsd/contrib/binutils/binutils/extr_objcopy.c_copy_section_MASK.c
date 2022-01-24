#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct section_list {int flags; scalar_t__ set_flags; } ;
typedef  TYPE_1__* sec_ptr ;
typedef  int flagword ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_17__ {int /*<<< orphan*/ * sym_ptr_ptr; } ;
typedef  TYPE_2__ arelent ;
struct TYPE_16__ {int lma; struct TYPE_16__* output_section; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SEC_GROUP ; 
 int SEC_HAS_CONTENTS ; 
 scalar_t__ STRIP_ALL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__**,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_core ; 
 scalar_t__ bfd_error_invalid_operation ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 long FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__**,long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ copy_byte ; 
 scalar_t__ extract_symbol ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct section_list* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int interleave ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  isympp ; 
 int /*<<< orphan*/  keep_specific_list ; 
 int /*<<< orphan*/  FUNC20 (void*,int /*<<< orphan*/ ,int) ; 
 int reverse_bytes ; 
 scalar_t__ status ; 
 scalar_t__ strip_symbols ; 
 void* FUNC21 (int) ; 

__attribute__((used)) static void
FUNC22 (bfd *ibfd, sec_ptr isection, void *obfdarg)
{
  bfd *obfd = obfdarg;
  struct section_list *p;
  arelent **relpp;
  long relcount;
  sec_ptr osection;
  bfd_size_type size;
  long relsize;
  flagword flags;

  /* If we have already failed earlier on,
     do not keep on generating complaints now.  */
  if (status != 0)
    return;

  if (FUNC19 (ibfd, isection))
    return;

  flags = FUNC9 (ibfd, isection);
  if ((flags & SEC_GROUP) != 0)
    return;

  osection = isection->output_section;
  size = FUNC11 (isection);

  if (size == 0 || osection == 0)
    return;

  p = FUNC16 (FUNC10 (ibfd, isection), FALSE);

  /* Core files do not need to be relocated.  */
  if (FUNC6 (obfd) == bfd_core)
    relsize = 0;
  else
    {
      relsize = FUNC7 (ibfd, isection);

      if (relsize < 0)
	{
	  /* Do not complain if the target does not support relocations.  */
	  if (relsize == -1 && FUNC4 () == bfd_error_invalid_operation)
	    relsize = 0;
	  else
	    FUNC0 (FUNC5 (ibfd));
	}
    }

  if (relsize == 0)
    FUNC13 (obfd, osection, NULL, 0);
  else
    {
      relpp = FUNC21 (relsize);
      relcount = FUNC3 (ibfd, isection, relpp, isympp);
      if (relcount < 0)
	FUNC0 (FUNC5 (ibfd));

      if (strip_symbols == STRIP_ALL)
	{
	  /* Remove relocations which are not in
	     keep_strip_specific_list.  */
	  arelent **temp_relpp;
	  long temp_relcount = 0;
	  long i;

	  temp_relpp = FUNC21 (relsize);
	  for (i = 0; i < relcount; i++)
	    if (FUNC18 (FUNC2 (*relpp[i]->sym_ptr_ptr),
				     keep_specific_list))
	      temp_relpp [temp_relcount++] = relpp [i];
	  relcount = temp_relcount;
	  FUNC17 (relpp);
	  relpp = temp_relpp;
	}

      FUNC13 (obfd, osection, relcount == 0 ? NULL : relpp, relcount);
      if (relcount == 0)
	FUNC17 (relpp);
    }

  if (extract_symbol)
    return;

  if (FUNC9 (ibfd, isection) & SEC_HAS_CONTENTS
      && FUNC9 (obfd, osection) & SEC_HAS_CONTENTS)
    {
      void *memhunk = FUNC21 (size);

      if (!FUNC8 (ibfd, isection, memhunk, 0, size))
	FUNC0 (FUNC5 (ibfd));

      if (reverse_bytes)
	{
	  /* We don't handle leftover bytes (too many possible behaviors,
	     and we don't know what the user wants).  The section length
	     must be a multiple of the number of bytes to swap.  */
	  if ((size % reverse_bytes) == 0)
	    {
	      unsigned long i, j;
	      bfd_byte b;

	      for (i = 0; i < size; i += reverse_bytes)
		for (j = 0; j < (unsigned long)(reverse_bytes / 2); j++)
		  {
		    bfd_byte *m = (bfd_byte *) memhunk;

		    b = m[i + j];
		    m[i + j] = m[(i + reverse_bytes) - (j + 1)];
		    m[(i + reverse_bytes) - (j + 1)] = b;
		  }
	    }
	  else
	    /* User must pad the section up in order to do this.  */
	    FUNC15 (FUNC1("cannot reverse bytes: length of section %s must be evenly divisible by %d"),
		   FUNC12 (ibfd, isection), reverse_bytes);
	}

      if (copy_byte >= 0)
	{
	  /* Keep only every `copy_byte'th byte in MEMHUNK.  */
	  char *from = (char *) memhunk + copy_byte;
	  char *to = memhunk;
	  char *end = (char *) memhunk + size;

	  for (; from < end; from += interleave)
	    *to++ = *from;

	  size = (size + interleave - 1 - copy_byte) / interleave;
	  osection->lma /= interleave;
	}

      if (!FUNC14 (obfd, osection, memhunk, 0, size))
	FUNC0 (FUNC5 (obfd));

      FUNC17 (memhunk);
    }
  else if (p != NULL && p->set_flags && (p->flags & SEC_HAS_CONTENTS) != 0)
    {
      void *memhunk = FUNC21 (size);

      /* We don't permit the user to turn off the SEC_HAS_CONTENTS
	 flag--they can just remove the section entirely and add it
	 back again.  However, we do permit them to turn on the
	 SEC_HAS_CONTENTS flag, and take it to mean that the section
	 contents should be zeroed out.  */

      FUNC20 (memhunk, 0, size);
      if (! FUNC14 (obfd, osection, memhunk, 0, size))
	FUNC0 (FUNC5 (obfd));
      FUNC17 (memhunk);
    }
}