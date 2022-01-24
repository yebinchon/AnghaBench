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
 scalar_t__ TYPE_DECL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC6 (tree object,
		const char* type,
		int virtualp,
		int quals,
		int inlinep,
		int friendp,
		int raises)
{
  if (virtualp)
    FUNC5 ("%qD declared as a %<virtual%> %s", object, type);
  if (inlinep)
    FUNC5 ("%qD declared as an %<inline%> %s", object, type);
  if (quals)
    FUNC5 ("%<const%> and %<volatile%> function specifiers on "
	   "%qD invalid in %s declaration",
	   object, type);
  if (friendp)
    FUNC5 ("%q+D declared as a friend", object);
  if (raises
      && (FUNC0 (object) == TYPE_DECL
	  || (!FUNC2 (FUNC1 (object))
	      && !FUNC4 (FUNC1 (object))
	      && !FUNC3 (FUNC1 (object)))))
    FUNC5 ("%q+D declared with an exception specification", object);
}