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
 int FUNC2 (struct type*) ; 
 char* FUNC3 (struct type*) ; 
 int FUNC4 (struct type*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct type*,int,char*,scalar_t__) ; 
 struct type* FUNC7 (int /*<<< orphan*/ ) ; 
 struct obstack dont_print_vb_obstack ; 
 int /*<<< orphan*/  FUNC8 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct ui_file*) ; 
 scalar_t__ FUNC10 (struct obstack*) ; 
 int /*<<< orphan*/  FUNC11 (struct obstack*) ; 
 int /*<<< orphan*/  FUNC12 (struct obstack*,struct type**) ; 
 scalar_t__ FUNC13 (struct obstack*) ; 
 int /*<<< orphan*/  FUNC14 (struct obstack*,struct type*) ; 
 int /*<<< orphan*/  FUNC15 (struct type*,char*,scalar_t__,struct ui_file*,int,int,int,struct type**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,struct ui_file*) ; 
 scalar_t__ FUNC17 (scalar_t__,char*,int) ; 

void
FUNC18 (struct type *type, char *valaddr, CORE_ADDR address,
			   struct ui_file *stream, int format, int recurse,
			   enum val_prettyprint pretty,
			   struct type **dont_print_vb)
{
  struct obstack tmp_obstack;
  struct type **last_dont_print
  = (struct type **) FUNC13 (&dont_print_vb_obstack);
  int i, n_baseclasses = FUNC4 (type);

  if (dont_print_vb == 0)
    {
      /* If we're at top level, carve out a completely fresh
         chunk of the obstack and use that until this particular
         invocation returns.  */
      tmp_obstack = dont_print_vb_obstack;
      /* Bump up the high-water mark.  Now alpha is omega.  */
      FUNC11 (&dont_print_vb_obstack);
    }

  for (i = 0; i < n_baseclasses; i++)
    {
      int boffset;
      struct type *baseclass = FUNC7 (FUNC1 (type, i));
      char *basename = FUNC3 (baseclass);
      char *base_valaddr;

      if (FUNC0 (type, i))
	{
	  struct type **first_dont_print
	  = (struct type **) FUNC10 (&dont_print_vb_obstack);

	  int j = (struct type **) FUNC13 (&dont_print_vb_obstack)
	  - first_dont_print;

	  while (--j >= 0)
	    if (baseclass == first_dont_print[j])
	      goto flush_it;

	  FUNC14 (&dont_print_vb_obstack, baseclass);
	}

      boffset = FUNC6 (type, i, valaddr, address);

      if (pretty)
	{
	  FUNC8 (stream, "\n");
	  FUNC16 (2 * recurse, stream);
	}
      FUNC9 ("<", stream);
      /* Not sure what the best notation is in the case where there is no
         baseclass name.  */

      FUNC9 (basename ? basename : "", stream);
      FUNC9 ("> = ", stream);

      /* The virtual base class pointer might have been clobbered by the
         user program. Make sure that it still points to a valid memory
         location.  */

      if (boffset != -1 && (boffset < 0 || boffset >= FUNC2 (type)))
	{
	  /* FIXME (alloc): not safe is baseclass is really really big. */
	  base_valaddr = (char *) FUNC5 (FUNC2 (baseclass));
	  if (FUNC17 (address + boffset, base_valaddr,
				  FUNC2 (baseclass)) != 0)
	    boffset = -1;
	}
      else
	base_valaddr = valaddr + boffset;

      if (boffset == -1)
	FUNC8 (stream, "<invalid address>");
      else
	FUNC15 (baseclass, base_valaddr, address + boffset,
					  stream, format, recurse, pretty,
		     (struct type **) FUNC10 (&dont_print_vb_obstack),
					  0);
      FUNC9 (", ", stream);

    flush_it:
      ;
    }

  if (dont_print_vb == 0)
    {
      /* Free the space used to deal with the printing
         of this type from top level.  */
      FUNC12 (&dont_print_vb_obstack, last_dont_print);
      /* Reset watermark so that we can continue protecting
         ourselves from whatever we were protecting ourselves.  */
      dont_print_vb_obstack = tmp_obstack;
    }
}