#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  cp_parser ;
typedef  int /*<<< orphan*/  cp_declarator ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef  TYPE_1__ cp_decl_specifier_seq ;

/* Variables and functions */
 int /*<<< orphan*/  TYPENAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static tree
FUNC5 (cp_parser* parser)
{
  tree attributes;
  cp_decl_specifier_seq type_specifiers;
  cp_declarator *declarator;
  tree type_specified;

  /* Parse the attributes.  */
  attributes = FUNC0 (parser);
  /* Parse the type-specifiers.  */
  FUNC2 (parser, /*is_condition=*/false,
				&type_specifiers);
  /* If that didn't work, stop.  */
  if (type_specifiers.type == error_mark_node)
    return error_mark_node;
  /* Parse the conversion-declarator.  */
  declarator = FUNC1 (parser);

  type_specified =  FUNC4 (declarator, &type_specifiers, TYPENAME,
				    /*initialized=*/0, &attributes);
  if (attributes)
    FUNC3 (&type_specified, attributes, /*flags=*/0);
  return type_specified;
}