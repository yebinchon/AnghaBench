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
struct fn_field {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int DMGL_ANSI ; 
 int DMGL_JAVA ; 
 int DMGL_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 int /*<<< orphan*/  QUIT ; 
 int FUNC2 (struct type*) ; 
#define  TYPE_CODE_PTR 129 
#define  TYPE_CODE_STRUCT 128 
 int /*<<< orphan*/ * FUNC3 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct type*,int) ; 
 struct fn_field* FUNC8 (struct type*,int) ; 
 int FUNC9 (struct type*,int) ; 
 char* FUNC10 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct fn_field*,int) ; 
 char* FUNC14 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct fn_field*,int) ; 
 struct type* FUNC21 (struct fn_field*,int) ; 
 char* FUNC22 (struct type*) ; 
 int FUNC23 (struct type*) ; 
 int FUNC24 (struct type*) ; 
 int FUNC25 (struct type*) ; 
 int /*<<< orphan*/  FUNC26 (struct type*) ; 
 char* FUNC27 (struct type*) ; 
 struct type* FUNC28 (struct type*) ; 
 int /*<<< orphan*/  FUNC29 (struct type*,struct ui_file*,int,int) ; 
 char* FUNC30 (char*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC32 (int,struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC33 (char*,struct ui_file*) ; 
 char* FUNC34 (struct type*,int,int) ; 
 int /*<<< orphan*/  FUNC35 (char*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (char*) ; 
 char* FUNC38 (char*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ui_file*,int,int) ; 
 int /*<<< orphan*/  FUNC40 (struct ui_file*,struct type*) ; 
 int /*<<< orphan*/  FUNC41 (int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC42 (char*,char*) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC44 (struct type*) ; 
 int /*<<< orphan*/  FUNC45 (struct type*,char*,struct ui_file*,int) ; 
 int /*<<< orphan*/  FUNC46 (char*) ; 
 int /*<<< orphan*/  FUNC47 (char*) ; 
 char* FUNC48 (char*) ; 

__attribute__((used)) static void
FUNC49 (struct type *type, struct ui_file *stream, int show,
		      int level)
{
  int i;
  int len;
  char *mangled_name;
  char *demangled_name;
  QUIT;

  FUNC46 ("    ");

  if (type == NULL)
    {
      FUNC33 ("<type unknown>", stream);
      return;
    }

  /* When SHOW is zero or less, and there is a valid type name, then always
     just print the type name directly from the type.  */

  if (show <= 0
      && FUNC22 (type) != NULL)
    {
      FUNC33 (FUNC22 (type), stream);
      return;
    }

  FUNC0 (type);

  switch (FUNC2 (type))
    {
    case TYPE_CODE_PTR:
      FUNC49 (FUNC28 (type), stream, show, level);
      break;

    case TYPE_CODE_STRUCT:
      if (FUNC27 (type) != NULL && FUNC27 (type)[0] == '[')
	{			/* array type */
	  char *name = FUNC38 (FUNC27 (type));
	  FUNC33 (name, stream);
	  FUNC47 (name);
	  break;
	}

      if (show >= 0)
	FUNC31 (stream, "class ");

      if (FUNC27 (type) != NULL)
	{
	  FUNC33 (FUNC27 (type), stream);
	  if (show > 0)
	    FUNC33 (" ", stream);
	}

      FUNC46 ("    ");

      if (show < 0)
	{
	  /* If we just printed a tag name, no need to print anything else.  */
	  if (FUNC27 (type) == NULL)
	    FUNC31 (stream, "{...}");
	}
      else if (show > 0 || FUNC27 (type) == NULL)
	{
	  FUNC40 (stream, type);

	  FUNC31 (stream, "{\n");
	  if ((FUNC23 (type) == 0) && (FUNC24 (type) == 0))
	    {
	      if (FUNC26 (type))
		FUNC32 (level + 4, stream, "<incomplete type>\n");
	      else
		FUNC32 (level + 4, stream, "<no data fields>\n");
	    }

	  /* If there is a base class for this type,
	     do not print the field that it occupies.  */

	  len = FUNC23 (type);
	  for (i = FUNC25 (type); i < len; i++)
	    {
	      QUIT;
	      /* Don't print out virtual function table.  */
	      if (FUNC43 (FUNC3 (type, i), "_vptr", 5) == 0
		  && FUNC36 ((FUNC3 (type, i))[5]))
		continue;

	      /* Don't print the dummy field "class". */
	      if (FUNC43 (FUNC3 (type, i), "class", 5) == 0)
		continue;

	      FUNC41 (level + 4, stream);

	      if (FUNC1 (type))
		{
		  if (FUNC5 (type, i))
		    FUNC31 (stream, "protected ");
		  else if (FUNC4 (type, i))
		    FUNC31 (stream, "private ");
		  else
		    FUNC31 (stream, "public ");
		}

	      if (FUNC6 (type, i))
		FUNC31 (stream, "static ");

	      FUNC39 (FUNC7 (type, i),
			       FUNC3 (type, i),
			       stream, show - 1, level + 4);

	      FUNC31 (stream, ";\n");
	    }

	  /* If there are both fields and methods, put a space between. */
	  len = FUNC24 (type);
	  if (len)
	    FUNC31 (stream, "\n");

	  /* Print out the methods */

	  for (i = 0; i < len; i++)
	    {
	      struct fn_field *f;
	      int j;
	      char *method_name;
	      char *name;
	      int is_constructor;
	      int n_overloads;

	      f = FUNC8 (type, i);
	      n_overloads = FUNC9 (type, i);
	      method_name = FUNC10 (type, i);
	      name = FUNC44 (type);
	      is_constructor = name && FUNC42 (method_name, name) == 0;

	      for (j = 0; j < n_overloads; j++)
		{
		  char *physname;
		  int is_full_physname_constructor;

		  physname = FUNC14 (f, j);

		  is_full_physname_constructor
                    = (FUNC35 (physname)
                       || FUNC37 (physname));

		  QUIT;

		  FUNC41 (level + 4, stream);

		  if (FUNC16 (f, j))
		    FUNC31 (stream, "protected ");
		  else if (FUNC15 (f, j))
		    FUNC31 (stream, "private ");
		  else if (FUNC17 (f, j))
		    FUNC31 (stream, "public ");

		  if (FUNC11 (f, j))
		    FUNC31 (stream, "abstract ");
		  if (FUNC18 (f, j))
		    FUNC31 (stream, "static ");
		  if (FUNC12 (f, j))
		    FUNC31 (stream, "final ");
		  if (FUNC20 (f, j))
		    FUNC31 (stream, "synchronized ");
		  if (FUNC13 (f, j))
		    FUNC31 (stream, "native ");

		  if (FUNC28 (FUNC21 (f, j)) == 0)
		    {
		      /* Keep GDB from crashing here.  */
		      FUNC31 (stream, "<undefined type> %s;\n",
					FUNC14 (f, j));
		      break;
		    }
		  else if (!is_constructor && !is_full_physname_constructor)
		    {
		      FUNC45 (FUNC28 (FUNC21 (f, j)),
				  "", stream, -1);
		      FUNC33 (" ", stream);
		    }

		  if (FUNC19 (f, j))
		    /* Build something we can demangle.  */
		    mangled_name = FUNC34 (type, i, j);
		  else
		    mangled_name = FUNC14 (f, j);

		  demangled_name =
		    FUNC30 (mangled_name,
				    DMGL_ANSI | DMGL_PARAMS | DMGL_JAVA);

		  if (demangled_name == NULL)
		    demangled_name = FUNC48 (mangled_name);

		  {
		    char *demangled_no_class;
		    char *ptr;

		    ptr = demangled_no_class = demangled_name;

		    while (1)
		      {
			char c;

			c = *ptr++;

			if (c == 0 || c == '(')
			  break;
			if (c == '.')
			  demangled_no_class = ptr;
		      }

		    FUNC33 (demangled_no_class, stream);
		    FUNC47 (demangled_name);
		  }

		  if (FUNC19 (f, j))
		    FUNC47 (mangled_name);

		  FUNC31 (stream, ";\n");
		}
	    }

	  FUNC32 (level, stream, "}");
	}
      break;

    default:
      FUNC29 (type, stream, show, level);
    }
}