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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  flag_permissive ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ processing_template_decl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

tree
FUNC3 (tree name)
{
  if (processing_template_decl)
    {
      /* In a template, it is invalid to write "f()" or "f(3)" if no
	 declaration of "f" is available.  Historically, G++ and most
	 other compilers accepted that usage since they deferred all name
	 lookup until instantiation time rather than doing unqualified
	 name lookup at template definition time; explain to the user what
	 is going wrong.

	 Note that we have the exact wording of the following message in
	 the manual (trouble.texi, node "Name lookup"), so they need to
	 be kept in synch.  */
      FUNC1 ("there are no arguments to %qD that depend on a template "
	       "parameter, so a declaration of %qD must be available",
	       name, name);

      if (!flag_permissive)
	{
	  static bool hint;
	  if (!hint)
	    {
	      FUNC0 ("(if you use %<-fpermissive%>, G++ will accept your "
		     "code, but allowing the use of an undeclared name is "
		     "deprecated)");
	      hint = true;
	    }
	}
      return name;
    }

  return FUNC2 (name);
}