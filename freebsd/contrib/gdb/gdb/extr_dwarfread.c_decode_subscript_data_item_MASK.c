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
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_ID ; 
 int /*<<< orphan*/  DIE_NAME ; 
#define  FMT_ET 136 
#define  FMT_FT_C_C 135 
#define  FMT_FT_C_X 134 
#define  FMT_FT_X_C 133 
#define  FMT_FT_X_X 132 
#define  FMT_UT_C_C 131 
#define  FMT_UT_C_X 130 
#define  FMT_UT_X_C 129 
#define  FMT_UT_X_X 128 
 int /*<<< orphan*/  FT_INTEGER ; 
 int /*<<< orphan*/  GET_UNSIGNED ; 
 int SIZEOF_FMT_FT ; 
 int SIZEOF_FORMAT_SPECIFIER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct type* FUNC2 (struct type*,struct type*,struct type*) ; 
 struct type* FUNC3 (struct type*,struct type*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  current_objfile ; 
 struct type* FUNC4 (char*) ; 
 struct type* FUNC5 (unsigned short) ; 
 struct type* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  symfile_complaints ; 
 void* FUNC7 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct type *
FUNC8 (char *scan, char *end)
{
  struct type *typep = NULL;	/* Array type we are building */
  struct type *nexttype;	/* Type of each element (may be array) */
  struct type *indextype;	/* Type of this index */
  struct type *rangetype;
  unsigned int format;
  unsigned short fundtype;
  unsigned long lowbound;
  unsigned long highbound;
  int nbytes;

  format = FUNC7 (scan, SIZEOF_FORMAT_SPECIFIER, GET_UNSIGNED,
			   current_objfile);
  scan += SIZEOF_FORMAT_SPECIFIER;
  switch (format)
    {
    case FMT_ET:
      typep = FUNC4 (scan);
      break;
    case FMT_FT_C_C:
      fundtype = FUNC7 (scan, SIZEOF_FMT_FT, GET_UNSIGNED,
				 current_objfile);
      indextype = FUNC5 (fundtype);
      scan += SIZEOF_FMT_FT;
      nbytes = FUNC0 (current_objfile);
      lowbound = FUNC7 (scan, nbytes, GET_UNSIGNED, current_objfile);
      scan += nbytes;
      highbound = FUNC7 (scan, nbytes, GET_UNSIGNED, current_objfile);
      scan += nbytes;
      nexttype = FUNC8 (scan, end);
      if (nexttype == NULL)
	{
	  /* Munged subscript data or other problem, fake it. */
	  FUNC1 (&symfile_complaints,
		     "DIE @ 0x%x \"%s\", can't decode subscript data items",
		     DIE_ID, DIE_NAME);
	  nexttype = FUNC6 (current_objfile, FT_INTEGER);
	}
      rangetype = FUNC3 ((struct type *) NULL, indextype,
				     lowbound, highbound);
      typep = FUNC2 ((struct type *) NULL, nexttype, rangetype);
      break;
    case FMT_FT_C_X:
    case FMT_FT_X_C:
    case FMT_FT_X_X:
    case FMT_UT_C_C:
    case FMT_UT_C_X:
    case FMT_UT_X_C:
    case FMT_UT_X_X:
      FUNC1 (&symfile_complaints,
		 "DIE @ 0x%x \"%s\", array subscript format 0x%x not handled yet",
		 DIE_ID, DIE_NAME, format);
      nexttype = FUNC6 (current_objfile, FT_INTEGER);
      rangetype = FUNC3 ((struct type *) NULL, nexttype, 0, 0);
      typep = FUNC2 ((struct type *) NULL, nexttype, rangetype);
      break;
    default:
      FUNC1 (&symfile_complaints,
		 "DIE @ 0x%x \"%s\", unknown array subscript format %x", DIE_ID,
		 DIE_NAME, format);
      nexttype = FUNC6 (current_objfile, FT_INTEGER);
      rangetype = FUNC3 ((struct type *) NULL, nexttype, 0, 0);
      typep = FUNC2 ((struct type *) NULL, nexttype, rangetype);
      break;
    }
  return (typep);
}