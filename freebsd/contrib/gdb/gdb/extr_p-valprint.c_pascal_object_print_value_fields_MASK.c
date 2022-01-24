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
struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct obstack {int dummy; } ;
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int DMGL_ANSI ; 
 int DMGL_PARAMS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 int FUNC2 (struct type*,int) ; 
 scalar_t__ FUNC3 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct type*,int) ; 
 scalar_t__ FUNC5 (struct type*,int) ; 
 scalar_t__ FUNC6 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct type*,int) ; 
 int FUNC8 (struct type*) ; 
 int FUNC9 (struct type*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct value*,struct ui_file*,int,int /*<<< orphan*/ ,int,int) ; 
 struct obstack dont_print_statmem_obstack ; 
 int /*<<< orphan*/  FUNC15 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct ui_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,struct ui_file*) ; 
 scalar_t__ inspect_it ; 
 int /*<<< orphan*/  language_cplus ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct obstack*) ; 
 int /*<<< orphan*/  FUNC20 (struct obstack*,char*) ; 
 char* FUNC21 (struct obstack*) ; 
 int /*<<< orphan*/  FUNC22 (struct value*,struct ui_file*,int,int,int) ; 
 int /*<<< orphan*/  FUNC23 (struct type*,char*,scalar_t__,struct ui_file*,int,int,int,struct type**) ; 
 int /*<<< orphan*/  pascal_static_field_print ; 
 int /*<<< orphan*/  FUNC24 (int,struct ui_file*) ; 
 char* FUNC25 (struct type*) ; 
 int /*<<< orphan*/  FUNC26 (struct type*,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,int,scalar_t__,struct ui_file*,int,int /*<<< orphan*/ ,int,int) ; 
 struct value* FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 

void
FUNC30 (struct type *type, char *valaddr,
				  CORE_ADDR address, struct ui_file *stream,
				  int format, int recurse,
				  enum val_prettyprint pretty,
				  struct type **dont_print_vb,
				  int dont_print_statmem)
{
  int i, len, n_baseclasses;
  struct obstack tmp_obstack;
  char *last_dont_print = FUNC21 (&dont_print_statmem_obstack);

  FUNC0 (type);

  FUNC15 (stream, "{");
  len = FUNC8 (type);
  n_baseclasses = FUNC9 (type);

  /* Print out baseclasses such that we don't print
     duplicates of virtual baseclasses.  */
  if (n_baseclasses > 0)
    FUNC23 (type, valaddr, address, stream,
			       format, recurse + 1, pretty, dont_print_vb);

  if (!len && n_baseclasses == 1)
    FUNC15 (stream, "<No data fields>");
  else
    {
      int fields_seen = 0;

      if (dont_print_statmem == 0)
	{
	  /* If we're at top level, carve out a completely fresh
	     chunk of the obstack and use that until this particular
	     invocation returns.  */
	  tmp_obstack = dont_print_statmem_obstack;
	  FUNC19 (&dont_print_statmem_obstack);
	}

      for (i = n_baseclasses; i < len; i++)
	{
	  /* If requested, skip printing of static fields.  */
	  if (!pascal_static_field_print && FUNC6 (type, i))
	    continue;
	  if (fields_seen)
	    FUNC15 (stream, ", ");
	  else if (n_baseclasses > 0)
	    {
	      if (pretty)
		{
		  FUNC15 (stream, "\n");
		  FUNC24 (2 + 2 * recurse, stream);
		  FUNC17 ("members of ", stream);
		  FUNC17 (FUNC25 (type), stream);
		  FUNC17 (": ", stream);
		}
	    }
	  fields_seen = 1;

	  if (pretty)
	    {
	      FUNC15 (stream, "\n");
	      FUNC24 (2 + 2 * recurse, stream);
	    }
	  else
	    {
	      FUNC29 (FUNC18 (2 + 2 * recurse));
	    }
	  if (inspect_it)
	    {
	      if (FUNC1 (FUNC7 (type, i)) == TYPE_CODE_PTR)
		FUNC17 ("\"( ptr \"", stream);
	      else
		FUNC17 ("\"( nodef \"", stream);
	      if (FUNC6 (type, i))
		FUNC17 ("static ", stream);
	      FUNC16 (stream, FUNC4 (type, i),
				       language_cplus,
				       DMGL_PARAMS | DMGL_ANSI);
	      FUNC17 ("\" \"", stream);
	      FUNC16 (stream, FUNC4 (type, i),
				       language_cplus,
				       DMGL_PARAMS | DMGL_ANSI);
	      FUNC17 ("\") \"", stream);
	    }
	  else
	    {
	      FUNC10 (FUNC7 (type, i));

	      if (FUNC6 (type, i))
		FUNC17 ("static ", stream);
	      FUNC16 (stream, FUNC4 (type, i),
				       language_cplus,
				       DMGL_PARAMS | DMGL_ANSI);
	      FUNC12 ();
	      FUNC17 (" = ", stream);
	      FUNC13 ();
	    }

	  if (!FUNC6 (type, i) && FUNC5 (type, i))
	    {
	      struct value *v;

	      /* Bitfields require special handling, especially due to byte
	         order problems.  */
	      if (FUNC3 (type, i))
		{
		  FUNC17 ("<optimized out or zero length>", stream);
		}
	      else
		{
		  v = FUNC28 (FUNC7 (type, i),
				   FUNC26 (type, valaddr, i));

		  FUNC14 (v, stream, format, 0, recurse + 1, pretty);
		}
	    }
	  else
	    {
	      if (FUNC3 (type, i))
		{
		  FUNC17 ("<optimized out or zero length>", stream);
		}
	      else if (FUNC6 (type, i))
		{
		  /* struct value *v = value_static_field (type, i); v4.17 specific */
		  struct value *v;
		  v = FUNC28 (FUNC7 (type, i),
				   FUNC26 (type, valaddr, i));

		  if (v == NULL)
		    FUNC17 ("<optimized out>", stream);
		  else
		    FUNC22 (v, stream, format,
						      recurse + 1, pretty);
		}
	      else
		{
		  /* val_print (TYPE_FIELD_TYPE (type, i),
		     valaddr + TYPE_FIELD_BITPOS (type, i) / 8,
		     address + TYPE_FIELD_BITPOS (type, i) / 8, 0,
		     stream, format, 0, recurse + 1, pretty); */
		  FUNC27 (FUNC7 (type, i),
			     valaddr, FUNC2 (type, i) / 8,
			     address + FUNC2 (type, i) / 8,
			     stream, format, 0, recurse + 1, pretty);
		}
	    }
	  FUNC11 ();
	}

      if (dont_print_statmem == 0)
	{
	  /* Free the space used to deal with the printing
	     of the members from top level.  */
	  FUNC20 (&dont_print_statmem_obstack, last_dont_print);
	  dont_print_statmem_obstack = tmp_obstack;
	}

      if (pretty)
	{
	  FUNC15 (stream, "\n");
	  FUNC24 (2 * recurse, stream);
	}
    }
  FUNC15 (stream, "}");
}