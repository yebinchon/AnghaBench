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
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 int DMGL_ANSI ; 
 int DMGL_PARAMS ; 
 int /*<<< orphan*/  FUNC2 (struct type*,int) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 int FUNC4 (struct type*,int) ; 
 scalar_t__ FUNC5 (struct type*,int) ; 
 char* FUNC6 (struct type*,int) ; 
 scalar_t__ FUNC7 (struct type*,int) ; 
 scalar_t__ FUNC8 (struct type*,int) ; 
 struct type* FUNC9 (struct type*,int) ; 
 char* FUNC10 (struct type*) ; 
 int FUNC11 (struct type*) ; 
 int FUNC12 (struct type*) ; 
 int /*<<< orphan*/  FUNC13 (struct value*) ; 
 int /*<<< orphan*/  FUNC14 (struct type*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 struct type* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct value*,struct ui_file*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct ui_file*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,struct ui_file*) ; 
 scalar_t__ inspect_it ; 
 int /*<<< orphan*/  language_cplus ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int,struct ui_file*) ; 
 int /*<<< orphan*/  static_field_print ; 
 scalar_t__ FUNC25 (char*,char*) ; 
 char* FUNC26 (struct type*) ; 
 int /*<<< orphan*/  FUNC27 (struct type*,char*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct type*,char*,int /*<<< orphan*/ ,scalar_t__,struct ui_file*,int,int /*<<< orphan*/ ,int,int) ; 
 struct value* FUNC29 (struct value*) ; 
 struct value* FUNC30 (struct type*,int /*<<< orphan*/ ) ; 
 struct value* FUNC31 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC33 (struct type *type, char *valaddr, CORE_ADDR address,
			 struct ui_file *stream, int format, int recurse,
			 enum val_prettyprint pretty)
{
  int i, len, n_baseclasses;

  FUNC1 (type);

  FUNC20 (stream, "{");
  len = FUNC11 (type);
  n_baseclasses = FUNC12 (type);

  if (n_baseclasses > 0)
    {
      int i, n_baseclasses = FUNC12 (type);

      for (i = 0; i < n_baseclasses; i++)
	{
	  int boffset;
	  struct type *baseclass = FUNC18 (FUNC2 (type, i));
	  char *basename = FUNC10 (baseclass);
	  char *base_valaddr;

	  if (FUNC0 (type, i))
	    continue;

	  if (basename != NULL && FUNC25 (basename, "java.lang.Object") == 0)
	    continue;

	  boffset = 0;

	  if (pretty)
	    {
	      FUNC20 (stream, "\n");
	      FUNC24 (2 * (recurse + 1), stream);
	    }
	  FUNC22 ("<", stream);
	  /* Not sure what the best notation is in the case where there is no
	     baseclass name.  */
	  FUNC22 (basename ? basename : "", stream);
	  FUNC22 ("> = ", stream);

	  base_valaddr = valaddr;

	  FUNC33 (baseclass, base_valaddr, address + boffset,
				   stream, format, recurse + 1, pretty);
	  FUNC22 (", ", stream);
	}

    }

  if (!len && n_baseclasses == 1)
    FUNC20 (stream, "<No data fields>");
  else
    {
      int fields_seen = 0;

      for (i = n_baseclasses; i < len; i++)
	{
	  /* If requested, skip printing of static fields.  */
	  if (FUNC8 (type, i))
	    {
	      char *name = FUNC6 (type, i);
	      if (!static_field_print)
		continue;
	      if (name != NULL && FUNC25 (name, "class") == 0)
		continue;
	    }
	  if (fields_seen)
	    FUNC20 (stream, ", ");
	  else if (n_baseclasses > 0)
	    {
	      if (pretty)
		{
		  FUNC20 (stream, "\n");
		  FUNC24 (2 + 2 * recurse, stream);
		  FUNC22 ("members of ", stream);
		  FUNC22 (FUNC26 (type), stream);
		  FUNC22 (": ", stream);
		}
	    }
	  fields_seen = 1;

	  if (pretty)
	    {
	      FUNC20 (stream, "\n");
	      FUNC24 (2 + 2 * recurse, stream);
	    }
	  else
	    {
	      FUNC32 (FUNC23 (2 + 2 * recurse));
	    }
	  if (inspect_it)
	    {
	      if (FUNC3 (FUNC9 (type, i)) == TYPE_CODE_PTR)
		FUNC22 ("\"( ptr \"", stream);
	      else
		FUNC22 ("\"( nodef \"", stream);
	      if (FUNC8 (type, i))
		FUNC22 ("static ", stream);
	      FUNC21 (stream, FUNC6 (type, i),
				       language_cplus,
				       DMGL_PARAMS | DMGL_ANSI);
	      FUNC22 ("\" \"", stream);
	      FUNC21 (stream, FUNC6 (type, i),
				       language_cplus,
				       DMGL_PARAMS | DMGL_ANSI);
	      FUNC22 ("\") \"", stream);
	    }
	  else
	    {
	      FUNC14 (FUNC9 (type, i));

	      if (FUNC8 (type, i))
		FUNC22 ("static ", stream);
	      FUNC21 (stream, FUNC6 (type, i),
				       language_cplus,
				       DMGL_PARAMS | DMGL_ANSI);
	      FUNC16 ();
	      FUNC22 (": ", stream);
	      FUNC17 ();
	    }

	  if (!FUNC8 (type, i) && FUNC7 (type, i))
	    {
	      struct value *v;

	      /* Bitfields require special handling, especially due to byte
	         order problems.  */
	      if (FUNC5 (type, i))
		{
		  FUNC22 ("<optimized out or zero length>", stream);
		}
	      else
		{
		  v = FUNC30 (FUNC9 (type, i),
				   FUNC27 (type, valaddr, i));

		  FUNC19 (v, stream, format, 0, recurse + 1, pretty);
		}
	    }
	  else
	    {
	      if (FUNC5 (type, i))
		{
		  FUNC22 ("<optimized out or zero length>", stream);
		}
	      else if (FUNC8 (type, i))
		{
		  struct value *v = FUNC31 (type, i);
		  if (v == NULL)
		    FUNC22 ("<optimized out>", stream);
		  else
		    {
		      struct type *t = FUNC18 (FUNC13 (v));
		      if (FUNC3 (t) == TYPE_CODE_STRUCT)
			v = FUNC29 (v);
		      FUNC19 (v, stream, format, 0, recurse + 1,
					pretty);
		    }
		}
	      else if (FUNC9 (type, i) == NULL)
		FUNC22 ("<unknown type>", stream);
	      else
		{
		  FUNC28 (FUNC9 (type, i),
			     valaddr + FUNC4 (type, i) / 8, 0,
			     address + FUNC4 (type, i) / 8,
			     stream, format, 0, recurse + 1, pretty);
		}
	    }
	  FUNC15 ();
	}

      if (pretty)
	{
	  FUNC20 (stream, "\n");
	  FUNC24 (2 * recurse, stream);
	}
    }
  FUNC20 (stream, "}");
}