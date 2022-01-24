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
 char* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int SECTION_LINKONCE ; 
 int SECTION_WRITE ; 
 int /*<<< orphan*/  TARGET_ABICALLS ; 
 scalar_t__ TARGET_GPWORD ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * data_section ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 scalar_t__ flag_data_sections ; 
 scalar_t__ flag_function_sections ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 

__attribute__((used)) static section *
FUNC8 (tree decl)
{
  if (!TARGET_ABICALLS || TARGET_GPWORD)
    return FUNC4 (decl);

  if (decl && FUNC2 (decl))
    {
      const char *name = FUNC3 (FUNC2 (decl));
      if (FUNC1 (decl) && FUNC7 (name, ".gnu.linkonce.t.", 16) == 0)
	{
	  char *rname = FUNC0 (name);
	  rname[14] = 'd';
	  return FUNC5 (rname, SECTION_LINKONCE | SECTION_WRITE, decl);
	}
      else if (flag_function_sections && flag_data_sections
	       && FUNC7 (name, ".text.", 6) == 0)
	{
	  char *rname = FUNC0 (name);
	  FUNC6 (rname + 1, "data", 4);
	  return FUNC5 (rname, SECTION_WRITE, decl);
	}
    }
  return data_section;
}