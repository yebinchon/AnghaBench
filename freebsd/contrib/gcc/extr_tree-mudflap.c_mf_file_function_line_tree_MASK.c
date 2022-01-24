#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  location_t ;
struct TYPE_4__ {char* file; scalar_t__ line; scalar_t__ column; } ;
typedef  TYPE_1__ expanded_location ;
struct TYPE_5__ {char* (* decl_printable_name ) (scalar_t__,int) ;} ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 char* FUNC1 (char const*,char const*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ current_function_decl ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,...) ; 
 char* FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static tree
FUNC7 (location_t location)
{
  expanded_location xloc = FUNC2 (location);
  const char *file = NULL, *colon, *line, *op, *name, *cp;
  char linecolbuf[30]; /* Enough for two decimal numbers plus a colon.  */
  char *string;
  tree result;

  /* Add FILENAME[:LINENUMBER[:COLUMNNUMBER]].  */
  file = xloc.file;
  if (file == NULL && current_function_decl != NULL_TREE)
    file = FUNC0 (current_function_decl);
  if (file == NULL)
    file = "<unknown file>";

  if (xloc.line > 0)
    {
#ifdef USE_MAPPED_LOCATION
      if (xloc.column > 0)
        sprintf (linecolbuf, "%d:%d", xloc.line, xloc.column);
      else
#endif
        FUNC5 (linecolbuf, "%d", xloc.line);
      colon = ":";
      line = linecolbuf;
    }
  else
    colon = line = "";

  /* Add (FUNCTION).  */
  name = lang_hooks.decl_printable_name (current_function_decl, 1);
  if (name)
    {
      op = " (";
      cp = ")";
    }
  else
    op = name = cp = "";

  string = FUNC1 (file, colon, line, op, name, cp, NULL);
  result = FUNC4 (string);
  FUNC3 (string);

  return result;
}