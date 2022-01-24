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
typedef  enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;

/* Variables and functions */
 scalar_t__ CPP_EOF ; 
 int CPP_STRING ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static tree
FUNC3 (const char* name, int opt)
{
  tree result, x;
  enum cpp_ttype t;

  t = FUNC1 (&result);
  if (t == CPP_STRING)
    {
      if (FUNC1 (&x) != CPP_EOF)
	FUNC2 (0, "junk at end of #pragma %s", name);
      return result;
    }

  if (t == CPP_EOF && opt)
    return NULL_TREE;

  FUNC0 ("invalid #pragma %s", name);
  return error_mark_node;
}