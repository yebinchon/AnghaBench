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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char**,char*,char const*,...) ; 
 int /*<<< orphan*/  dump_file ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static const char *
FUNC9 (tree decl)
{
  const char *res = FUNC7 (decl);
  char *temp;
  int num_printed = 0;

  if (res != NULL)
    return res;

  res = "NULL";
  if (!dump_file)
    return res;

  if (FUNC4 (decl) == SSA_NAME)
    {
      num_printed = FUNC5 (&temp, "%s_%u",
			      FUNC9 (FUNC2 (decl)),
			      FUNC3 (decl));
    }
  else if (FUNC0 (decl))
    {
      num_printed = FUNC5 (&temp, "D.%s", FUNC1 (decl));
    }
  if (num_printed > 0)
    {
      res = FUNC8 (temp);
      FUNC6 (temp);
    }
  return res;
}