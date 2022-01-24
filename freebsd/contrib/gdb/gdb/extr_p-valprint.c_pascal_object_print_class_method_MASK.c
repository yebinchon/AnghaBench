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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 
 int DMGL_ANSI ; 
 int DMGL_PARAMS ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 struct type* FUNC4 (struct type*) ; 
 struct fn_field* FUNC5 (struct type*,unsigned int) ; 
 int FUNC6 (struct type*,unsigned int) ; 
 int FUNC7 (struct fn_field*,int) ; 
 int FUNC8 (struct fn_field*,int) ; 
 unsigned int FUNC9 (struct type*) ; 
 int /*<<< orphan*/  FUNC10 (struct type*) ; 
 int /*<<< orphan*/  builtin_type_void ; 
 int /*<<< orphan*/  FUNC11 (struct type*,unsigned int) ; 
 struct type* FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 struct symbol* FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct type*,char*,struct ui_file*,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 

void
FUNC22 (char *valaddr, struct type *type,
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
  struct type *target_type = FUNC12 (FUNC10 (type));

  domain = FUNC4 (target_type);
  if (domain == (struct type *) NULL)
    {
      FUNC16 (stream, "<unknown>");
      return;
    }
  addr = FUNC20 (FUNC18 (builtin_type_void), valaddr);
  if (FUNC2 (addr))
    {
      offset = FUNC3 (addr);
      len = FUNC9 (domain);
      for (i = 0; i < len; i++)
	{
	  f = FUNC5 (domain, i);
	  len2 = FUNC6 (domain, i);

	  FUNC11 (domain, i);
	  for (j = 0; j < len2; j++)
	    {
	      if (FUNC8 (f, j) == offset)
		{
		  kind = "virtual ";
		  goto common;
		}
	    }
	}
    }
  else
    {
      sym = FUNC15 (addr);
      if (sym == 0)
	{
	  FUNC14 ("invalid pointer to member function");
	}
      len = FUNC9 (domain);
      for (i = 0; i < len; i++)
	{
	  f = FUNC5 (domain, i);
	  len2 = FUNC6 (domain, i);

	  FUNC11 (domain, i);
	  for (j = 0; j < len2; j++)
	    {
	      if (FUNC0 (FUNC1 (sym), FUNC7 (f, j)))
		goto common;
	    }
	}
    }
common:
  if (i < len)
    {
      char *demangled_name;

      FUNC16 (stream, "&");
      FUNC17 (kind, stream);
      demangled_name = FUNC13 (FUNC7 (f, j),
				       DMGL_ANSI | DMGL_PARAMS);
      if (demangled_name == NULL)
	FUNC16 (stream, "<badly mangled name %s>",
			  FUNC7 (f, j));
      else
	{
	  FUNC17 (demangled_name, stream);
	  FUNC21 (demangled_name);
	}
    }
  else
    {
      FUNC16 (stream, "(");
      FUNC19 (type, "", stream, -1);
      FUNC16 (stream, ") %d", (int) addr >> 3);
    }
}