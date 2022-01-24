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
struct arg_lookup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ TEMPLATE_TEMPLATE_PARM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNBOUND_CLASS_TEMPLATE ; 
 int FUNC3 (struct arg_lookup*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct arg_lookup*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct arg_lookup*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6 (struct arg_lookup *k, tree arg)
{
  /* [basic.lookup.koenig]

     If T is a template-id, its associated namespaces and classes are
     ... the namespaces and classes associated with the types of the
     template arguments provided for template type parameters
     (excluding template template parameters); the namespaces in which
     any template template arguments are defined; and the classes in
     which any member templates used as template template arguments
     are defined.  [Note: non-type template arguments do not
     contribute to the set of associated namespaces.  ]  */

  /* Consider first template template arguments.  */
  if (FUNC1 (arg) == TEMPLATE_TEMPLATE_PARM
      || FUNC1 (arg) == UNBOUND_CLASS_TEMPLATE)
    return false;
  else if (FUNC1 (arg) == TEMPLATE_DECL)
    {
      tree ctx = FUNC0 (arg);

      /* It's not a member template.  */
      if (FUNC1 (ctx) == NAMESPACE_DECL)
	return FUNC4 (k, ctx);
      /* Otherwise, it must be member template.  */
      else
	return FUNC3 (k, ctx);
    }
  /* It's not a template template argument, but it is a type template
     argument.  */
  else if (FUNC2 (arg))
    return FUNC5 (k, arg);
  /* It's a non-type template argument.  */
  else
    return false;
}