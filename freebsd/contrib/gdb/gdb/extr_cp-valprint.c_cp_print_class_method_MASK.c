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
struct symbol {int dummy; } ;
struct fn_field {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symbol*) ; 
 int DMGL_ANSI ; 
 int DMGL_PARAMS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 struct type* FUNC3 (struct type*) ; 
 struct fn_field* FUNC4 (struct type*,unsigned int) ; 
 int FUNC5 (struct type*,unsigned int) ; 
 int FUNC6 (struct fn_field*,int) ; 
 int FUNC7 (struct fn_field*,int) ; 
 unsigned int FUNC8 (struct type*) ; 
 int /*<<< orphan*/  FUNC9 (struct type*) ; 
 int /*<<< orphan*/  FUNC10 (struct type*,unsigned int) ; 
 struct type* FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 struct symbol* FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,struct ui_file*) ; 
 scalar_t__ hp_som_som_object_present ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct type*,char*,struct ui_file*,int) ; 
 scalar_t__ FUNC19 (struct type*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

void
FUNC21 (char *valaddr,
		       struct type *type,
		       struct ui_file *stream)
{
  struct type *domain;
  struct fn_field *f = NULL;
  int j = 0;
  int len2;
  int offset;
  char *kind = "";
  CORE_ADDR addr;
  struct symbol *sym;
  unsigned len;
  unsigned int i;
  struct type *target_type = FUNC11 (FUNC9 (type));

  domain = FUNC3 (target_type);
  if (domain == (struct type *) NULL)
    {
      FUNC15 (stream, "<unknown>");
      return;
    }
  addr = FUNC19 (type, valaddr);
  if (FUNC1 (addr))
    {
      offset = FUNC2 (addr);
      len = FUNC8 (domain);
      for (i = 0; i < len; i++)
	{
	  f = FUNC4 (domain, i);
	  len2 = FUNC5 (domain, i);

	  FUNC10 (domain, i);
	  for (j = 0; j < len2; j++)
	    {
	      if (FUNC7 (f, j) == offset)
		{
		  kind = "virtual ";
		  goto common;
		}
	    }
	}
    }
  else
    {
      sym = FUNC14 (addr);
      if (sym == 0)
	{
	  /* 1997-08-01 Currently unsupported with HP aCC */
	  if (hp_som_som_object_present)
	    {
	      FUNC16 ("?? <not supported with HP aCC>", stream);
	      return;
	    }
	  FUNC13 ("invalid pointer to member function");
	}
      len = FUNC8 (domain);
      for (i = 0; i < len; i++)
	{
	  f = FUNC4 (domain, i);
	  len2 = FUNC5 (domain, i);

	  FUNC10 (domain, i);
	  for (j = 0; j < len2; j++)
	    {
	      if (FUNC17 (FUNC0 (sym), FUNC6 (f, j))
		  == 0)
		goto common;
	    }
	}
    }
 common:
  if (i < len)
    {
      char *demangled_name;

      FUNC15 (stream, "&");
      FUNC16 (kind, stream);
      demangled_name = FUNC12 (FUNC6 (f, j),
				       DMGL_ANSI | DMGL_PARAMS);
      if (demangled_name == NULL)
	FUNC15 (stream, "<badly mangled name %s>",
			  FUNC6 (f, j));
      else
	{
	  FUNC16 (demangled_name, stream);
	  FUNC20 (demangled_name);
	}
    }
  else
    {
      FUNC15 (stream, "(");
      FUNC18 (type, "", stream, -1);
      FUNC15 (stream, ") %d", (int) addr >> 3);
    }
}