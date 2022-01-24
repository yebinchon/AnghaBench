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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct obstack {int dummy; } ;
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 int FUNC3 (struct type*) ; 
 char* FUNC4 (struct type*) ; 
 int FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct type*,int,char*,scalar_t__) ; 
 struct type* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct type*,struct type*,char*,int,scalar_t__,struct ui_file*,int,int,int,struct type**,int /*<<< orphan*/ ) ; 
 struct obstack dont_print_vb_obstack ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct type*,int /*<<< orphan*/ ,char*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,struct ui_file*) ; 
 scalar_t__ FUNC14 (struct obstack*) ; 
 int /*<<< orphan*/  FUNC15 (struct obstack*) ; 
 int /*<<< orphan*/  FUNC16 (struct obstack*,struct type**) ; 
 scalar_t__ FUNC17 (struct obstack*) ; 
 int /*<<< orphan*/  FUNC18 (struct obstack*,struct type*) ; 
 int /*<<< orphan*/  FUNC19 (int,struct ui_file*) ; 
 scalar_t__ FUNC20 (scalar_t__,char*,int) ; 

__attribute__((used)) static void
FUNC21 (struct type *type, struct type *real_type, char *valaddr,
		int offset, CORE_ADDR address, struct ui_file *stream,
		int format, int recurse, enum val_prettyprint pretty,
		struct type **dont_print_vb)
{
  struct obstack tmp_obstack;
  struct type **last_dont_print
    = (struct type **) FUNC17 (&dont_print_vb_obstack);
  int i, n_baseclasses = FUNC5 (type);
  int thisoffset;
  struct type *thistype;

  if (dont_print_vb == 0)
    {
      /* If we're at top level, carve out a completely fresh
         chunk of the obstack and use that until this particular
         invocation returns.  */
      tmp_obstack = dont_print_vb_obstack;
      /* Bump up the high-water mark.  Now alpha is omega.  */
      FUNC15 (&dont_print_vb_obstack);
    }

  for (i = 0; i < n_baseclasses; i++)
    {
      int boffset;
      int skip;
      struct type *baseclass = FUNC8 (FUNC1 (type, i));
      char *basename = FUNC4 (baseclass);
      char *base_valaddr;

      if (FUNC0 (type, i))
	{
	  struct type **first_dont_print
	    = (struct type **) FUNC14 (&dont_print_vb_obstack);

	  int j = (struct type **) FUNC17 (&dont_print_vb_obstack)
	    - first_dont_print;

	  while (--j >= 0)
	    if (baseclass == first_dont_print[j])
	      goto flush_it;

	  FUNC18 (&dont_print_vb_obstack, baseclass);
	}

      thisoffset = offset;
      thistype = real_type;
      if (FUNC2 (type) && FUNC0 (type, i))
	{
	  /* Assume HP/Taligent runtime convention */
	  FUNC11 (type, FUNC1 (type, i),
				valaddr, offset, &boffset, &skip);
	  if (skip >= 0)
	    FUNC10 ("Virtual base class offset not found from vtable while"
		   " printing");
	  base_valaddr = valaddr;
	}
      else
	{
	  boffset = FUNC7 (type, i,
				      valaddr + offset,
				      address);
	  skip = ((boffset == -1) || (boffset + offset) < 0) ? 1 : -1;

	  if (FUNC0 (type, i))
	    {
	      /* The virtual base class pointer might have been
	         clobbered by the user program. Make sure that it
	         still points to a valid memory location.  */

	      if (boffset != -1
		  && ((boffset + offset) < 0
		      || (boffset + offset) >= FUNC3 (type)))
		{
		  /* FIXME (alloca): unsafe if baseclass is really really large. */
		  base_valaddr = (char *) FUNC6 (FUNC3 (baseclass));
		  if (FUNC20 (address + boffset, base_valaddr,
					  FUNC3 (baseclass)) != 0)
		    skip = 1;
		  address = address + boffset;
		  thisoffset = 0;
		  boffset = 0;
		  thistype = baseclass;
		}
	      else
		base_valaddr = valaddr;
	    }
	  else
	    base_valaddr = valaddr;
	}

      /* now do the printing */
      if (pretty)
	{
	  FUNC12 (stream, "\n");
	  FUNC19 (2 * recurse, stream);
	}
      FUNC13 ("<", stream);
      /* Not sure what the best notation is in the case where there is no
         baseclass name.  */
      FUNC13 (basename ? basename : "", stream);
      FUNC13 ("> = ", stream);


      if (skip >= 1)
	FUNC12 (stream, "<invalid address>");
      else
	FUNC9 (baseclass, thistype, base_valaddr,
			       thisoffset + boffset, address + boffset,
			       stream, format,
			       recurse, pretty,
			       ((struct type **)
				FUNC14 (&dont_print_vb_obstack)),
			       0);
      FUNC13 (", ", stream);

    flush_it:
      ;
    }

  if (dont_print_vb == 0)
    {
      /* Free the space used to deal with the printing
         of this type from top level.  */
      FUNC16 (&dont_print_vb_obstack, last_dont_print);
      /* Reset watermark so that we can continue protecting
         ourselves from whatever we were protecting ourselves.  */
      dont_print_vb_obstack = tmp_obstack;
    }
}