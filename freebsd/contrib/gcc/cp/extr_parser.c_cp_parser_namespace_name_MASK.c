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
typedef  int /*<<< orphan*/  cp_parser ;

/* Variables and functions */
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  none_type ; 

__attribute__((used)) static tree
FUNC6 (cp_parser* parser)
{
  tree identifier;
  tree namespace_decl;

  /* Get the name of the namespace.  */
  identifier = FUNC2 (parser);
  if (identifier == error_mark_node)
    return error_mark_node;

  /* Look up the identifier in the currently active scope.  Look only
     for namespaces, due to:

       [basic.lookup.udir]

       When looking up a namespace-name in a using-directive or alias
       definition, only namespace names are considered.

     And:

       [basic.lookup.qual]

       During the lookup of a name preceding the :: scope resolution
       operator, object, function, and enumerator names are ignored.

     (Note that cp_parser_class_or_namespace_name only calls this
     function if the token after the name is the scope resolution
     operator.)  */
  namespace_decl = FUNC3 (parser, identifier,
					  none_type,
					  /*is_template=*/false,
					  /*is_namespace=*/true,
					  /*check_dependency=*/true,
					  /*ambiguous_decls=*/NULL);
  /* If it's not a namespace, issue an error.  */
  if (namespace_decl == error_mark_node
      || FUNC0 (namespace_decl) != NAMESPACE_DECL)
    {
      if (!FUNC4 (parser))
	FUNC5 ("%qD is not a namespace-name", identifier);
      FUNC1 (parser, "expected namespace-name");
      namespace_decl = error_mark_node;
    }

  return namespace_decl;
}