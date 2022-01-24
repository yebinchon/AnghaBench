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
 int /*<<< orphan*/  current_namespace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3 (tree tmpl)
{
  tree tpl_ns = FUNC0 (tmpl);

  /* [tmpl.expl.spec]

     An explicit specialization shall be declared in the namespace of
     which the template is a member, or, for member templates, in the
     namespace of which the enclosing class or enclosing class
     template is a member.  An explicit specialization of a member
     function, member class or static data member of a class template
     shall be declared in the namespace of which the class template is
     a member.  */
  if (FUNC1 (current_namespace, tpl_ns))
    /* Same or super-using namespace.  */
    return true;
  else
    {
      FUNC2 ("specialization of %qD in different namespace", tmpl);
      FUNC2 ("  from definition of %q+#D", tmpl);
      return false;
    }
}