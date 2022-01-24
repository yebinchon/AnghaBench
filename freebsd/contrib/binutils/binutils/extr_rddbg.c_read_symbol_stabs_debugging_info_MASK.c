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
struct TYPE_3__ {char type; char* name; int /*<<< orphan*/  value; int /*<<< orphan*/  stab_desc; int /*<<< orphan*/  stab_type; } ;
typedef  TYPE_1__ symbol_info ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* FUNC9 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,long) ; 
 int FUNC10 (char const*) ; 
 char* FUNC11 (char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC12 (bfd *abfd, asymbol **syms, long symcount,
				  void *dhandle, bfd_boolean *pfound)
{
  void *shandle;
  asymbol **ps, **symend;

  shandle = NULL;
  symend = syms + symcount;
  for (ps = syms; ps < symend; ps++)
    {
      symbol_info i;

      FUNC1 (abfd, *ps, &i);

      if (i.type == '-')
	{
	  const char *s;
	  char *f;

	  if (shandle == NULL)
	    {
	      shandle = FUNC9 (dhandle, abfd, FALSE, syms, symcount);
	      if (shandle == NULL)
		return FALSE;
	    }

	  *pfound = TRUE;

	  s = i.name;
	  f = NULL;
	  while (s[FUNC10 (s) - 1] == '\\'
		 && ps + 1 < symend)
	    {
	      char *sc, *n;

	      ++ps;
	      sc = FUNC11 (s);
	      sc[FUNC10 (sc) - 1] = '\0';
	      n = FUNC2 (sc, FUNC0 (*ps), (const char *) NULL);
	      FUNC4 (sc);
	      if (f != NULL)
		FUNC4 (f);
	      f = n;
	      s = n;
	    }

	  FUNC7 (i.stab_type, i.stab_desc, i.value, s);

	  if (! FUNC6 (dhandle, shandle, i.stab_type, i.stab_desc,
			    i.value, s))
	    {
	      FUNC8 ();
	      FUNC5 ();
	      return FALSE;
	    }

	  /* Don't free f, since I think the stabs code expects
	     strings to hang around.  This should be straightened out.
	     FIXME.  */
	}
    }

  FUNC5 ();

  if (shandle != NULL)
    {
      if (! FUNC3 (dhandle, shandle))
	return FALSE;
    }

  return TRUE;
}