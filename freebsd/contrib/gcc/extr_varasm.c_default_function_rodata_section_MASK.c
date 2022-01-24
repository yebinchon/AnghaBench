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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  section ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ HAVE_COMDAT_GROUP ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  SECTION_LINKONCE ; 
 char* FUNC2 (scalar_t__) ; 
 char* FUNC3 (size_t) ; 
 scalar_t__ flag_data_sections ; 
 scalar_t__ flag_function_sections ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/ * readonly_data_section ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char*,int) ; 

section *
FUNC10 (tree decl)
{
  if (decl != NULL_TREE && FUNC1 (decl))
    {
      const char *name = FUNC2 (FUNC1 (decl));

      if (FUNC0 (decl) && HAVE_COMDAT_GROUP)
        {
	  size_t len = FUNC8 (name) + 3;
	  char* rname = FUNC3 (len);

	  FUNC7 (rname, ".rodata");
	  FUNC6 (rname, name + 5);
	  return FUNC4 (rname, SECTION_LINKONCE, decl);
	}
      /* For .gnu.linkonce.t.foo we want to use .gnu.linkonce.r.foo.  */
      else if (FUNC0 (decl)
	       && FUNC9 (name, ".gnu.linkonce.t.", 16) == 0)
	{
	  size_t len = FUNC8 (name) + 1;
	  char *rname = FUNC3 (len);

	  FUNC5 (rname, name, len);
	  rname[14] = 'r';
	  return FUNC4 (rname, SECTION_LINKONCE, decl);
	}
      /* For .text.foo we want to use .rodata.foo.  */
      else if (flag_function_sections && flag_data_sections
	       && FUNC9 (name, ".text.", 6) == 0)
	{
	  size_t len = FUNC8 (name) + 1;
	  char *rname = FUNC3 (len + 2);

	  FUNC5 (rname, ".rodata", 7);
	  FUNC5 (rname + 7, name + 5, len - 5);
	  return FUNC4 (rname, 0, decl);
	}
    }

  return readonly_data_section;
}