#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_5__ {scalar_t__ scope; scalar_t__ qualifying_scope; scalar_t__ object_scope; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  RID_OPERATOR ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC5 (cp_parser* parser)
{
  tree type;
  tree saved_scope;
  tree saved_qualifying_scope;
  tree saved_object_scope;
  tree pushed_scope = NULL_TREE;

  /* Look for the `operator' token.  */
  if (!FUNC1 (parser, RID_OPERATOR, "`operator'"))
    return error_mark_node;
  /* When we parse the conversion-type-id, the current scope will be
     reset.  However, we need that information in able to look up the
     conversion function later, so we save it here.  */
  saved_scope = parser->scope;
  saved_qualifying_scope = parser->qualifying_scope;
  saved_object_scope = parser->object_scope;
  /* We must enter the scope of the class so that the names of
     entities declared within the class are available in the
     conversion-type-id.  For example, consider:

       struct S {
	 typedef int I;
	 operator I();
       };

       S::operator I() { ... }

     In order to see that `I' is a type-name in the definition, we
     must be in the scope of `S'.  */
  if (saved_scope)
    pushed_scope = FUNC4 (saved_scope);
  /* Parse the conversion-type-id.  */
  type = FUNC0 (parser);
  /* Leave the scope of the class, if any.  */
  if (pushed_scope)
    FUNC3 (pushed_scope);
  /* Restore the saved scope.  */
  parser->scope = saved_scope;
  parser->qualifying_scope = saved_qualifying_scope;
  parser->object_scope = saved_object_scope;
  /* If the TYPE is invalid, indicate failure.  */
  if (type == error_mark_node)
    return error_mark_node;
  return FUNC2 (type);
}