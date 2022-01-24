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
struct partial_die_info {char* name; scalar_t__ has_children; } ;
struct objfile {int /*<<< orphan*/  global_psymbols; } ;
struct dwarf2_cu {int /*<<< orphan*/  language; struct objfile* objfile; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  LOC_TYPEDEF ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct objfile*) ; 
 char* FUNC1 (scalar_t__) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct dwarf2_cu*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static char *
FUNC6 (struct partial_die_info *pdi, char *info_ptr,
		       CORE_ADDR *lowpc, CORE_ADDR *highpc,
		       struct dwarf2_cu *cu, const char *namespace)
{
  struct objfile *objfile = cu->objfile;
  const char *new_name = pdi->name;
  char *full_name;

  /* Calculate the full name of the namespace that we just entered.  */

  if (new_name == NULL)
    new_name = "(anonymous namespace)";
  full_name = FUNC1 (FUNC5 (namespace) + 2 + FUNC5 (new_name) + 1);
  FUNC4 (full_name, namespace);
  if (*namespace != '\0')
    FUNC3 (full_name, "::");
  FUNC3 (full_name, new_name);

  /* FIXME: carlton/2003-10-07: We can't just replace this by a call
     to add_partial_symbol, because we don't have a way to pass in the
     full name to that function; that might be a flaw in
     add_partial_symbol's interface.  */

  FUNC0 (full_name, FUNC5 (full_name),
		       VAR_DOMAIN, LOC_TYPEDEF,
		       &objfile->global_psymbols,
		       0, 0, cu->language, objfile);

  /* Now scan partial symbols in that namespace.  */

  if (pdi->has_children)
    info_ptr = FUNC2 (info_ptr, lowpc, highpc, cu, full_name);

  return info_ptr;
}