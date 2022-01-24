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
typedef  int bfd_vma ;
typedef  int bfd_size_type ;
typedef  char bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (void*,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (void*,void*,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 void* FUNC17 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,long) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC18 (char*) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static bfd_boolean
FUNC20 (bfd *abfd, asymbol **syms, long symcount,
				   void *dhandle, bfd_boolean *pfound)
{
  static struct
    {
      const char *secname;
      const char *strsecname;
    }
  names[] =
    {
      { ".stab", ".stabstr" },
      { "LC_SYMTAB.stabs", "LC_SYMTAB.stabstr" },
      { "$GDB_SYMBOLS$", "$GDB_STRINGS$" }
    };
  unsigned int i;
  void *shandle;

  *pfound = FALSE;
  shandle = NULL;

  for (i = 0; i < sizeof names / sizeof names[0]; i++)
    {
      asection *sec, *strsec;

      sec = FUNC6 (abfd, names[i].secname);
      strsec = FUNC6 (abfd, names[i].strsecname);
      if (sec != NULL && strsec != NULL)
	{
	  bfd_size_type stabsize, strsize;
	  bfd_byte *stabs, *strings;
	  bfd_byte *stab;
	  bfd_size_type stroff, next_stroff;

	  stabsize = FUNC8 (abfd, sec);
	  stabs = (bfd_byte *) FUNC19 (stabsize);
	  if (! FUNC7 (abfd, sec, stabs, 0, stabsize))
	    {
	      FUNC11 (stderr, "%s: %s: %s\n",
		       FUNC5 (abfd), names[i].secname,
		       FUNC0 (FUNC4 ()));
	      return FALSE;
	    }

	  strsize = FUNC8 (abfd, strsec);
	  strings = (bfd_byte *) FUNC19 (strsize);
	  if (! FUNC7 (abfd, strsec, strings, 0, strsize))
	    {
	      FUNC11 (stderr, "%s: %s: %s\n",
		       FUNC5 (abfd), names[i].strsecname,
		       FUNC0 (FUNC4 ()));
	      return FALSE;
	    }

	  if (shandle == NULL)
	    {
	      shandle = FUNC17 (dhandle, abfd, TRUE, syms, symcount);
	      if (shandle == NULL)
		return FALSE;
	    }

	  *pfound = TRUE;

	  stroff = 0;
	  next_stroff = 0;
	  for (stab = stabs; stab < stabs + stabsize; stab += 12)
	    {
	      unsigned int strx;
	      int type;
	      int other;
	      int desc;
	      bfd_vma value;

	      /* This code presumes 32 bit values.  */

	      strx = FUNC2 (abfd, stab);
	      type = FUNC3 (abfd, stab + 4);
	      other = FUNC3 (abfd, stab + 5);
	      desc = FUNC1 (abfd, stab + 6);
	      value = FUNC2 (abfd, stab + 8);

	      if (type == 0)
		{
		  /* Special type 0 stabs indicate the offset to the
		     next string table.  */
		  stroff = next_stroff;
		  next_stroff += value;
		}
	      else
		{
		  char *f, *s;

		  f = NULL;

		  if (stroff + strx > strsize)
		    {
		      FUNC11 (stderr, "%s: %s: stab entry %ld is corrupt, strx = 0x%x, type = %d\n",
			       FUNC5 (abfd), names[i].secname,
			       (long) (stab - stabs) / 12, strx, type);
		      continue;
		    }

		  s = (char *) strings + stroff + strx;

		  while (s[FUNC18 (s) - 1] == '\\'
			 && stab + 12 < stabs + stabsize)
		    {
		      char *p;

		      stab += 12;
		      p = s + FUNC18 (s) - 1;
		      *p = '\0';
		      s = FUNC9 (s,
				  ((char *) strings
				   + stroff
				   + FUNC2 (abfd, stab)),
				  (const char *) NULL);

		      /* We have to restore the backslash, because, if
			 the linker is hashing stabs strings, we may
			 see the same string more than once.  */
		      *p = '\\';

		      if (f != NULL)
			FUNC12 (f);
		      f = s;
		    }

		  FUNC15 (type, desc, value, s);

		  if (! FUNC14 (dhandle, shandle, type, desc, value, s))
		    {
		      FUNC16 ();
		      FUNC13 ();
		      return FALSE;
		    }

		  /* Don't free f, since I think the stabs code
		     expects strings to hang around.  This should be
		     straightened out.  FIXME.  */
		}
	    }

	  FUNC13 ();
	  FUNC12 (stabs);

	  /* Don't free strings, since I think the stabs code expects
	     the strings to hang around.  This should be straightened
	     out.  FIXME.  */
	}
    }

  if (shandle != NULL)
    {
      if (! FUNC10 (dhandle, shandle))
	return FALSE;
    }

  return TRUE;
}