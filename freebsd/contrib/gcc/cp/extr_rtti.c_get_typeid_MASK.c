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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  TYPEID_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const_type_info_type_node ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ processing_template_decl ; 
 int /*<<< orphan*/  FUNC7 () ; 

tree
FUNC8 (tree type)
{
  if (type == error_mark_node || !FUNC7 ())
    return error_mark_node;

  if (processing_template_decl)
    return FUNC3 (TYPEID_EXPR, const_type_info_type_node, type);

  /* If the type of the type-id is a reference type, the result of the
     typeid expression refers to a type_info object representing the
     referenced type.  */
  type = FUNC6 (type);

  /* The top-level cv-qualifiers of the lvalue expression or the type-id
     that is the operand of typeid are always ignored.  */
  type = FUNC1 (type);

  if (FUNC0 (type))
    type = FUNC4 (type, NULL_TREE);

  if (!type)
    return error_mark_node;

  return FUNC2 (FUNC5 (type), NULL);
}