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
 int /*<<< orphan*/  CP_PARSER_DECLARATOR_ABSTRACT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC5 (cp_parser* parser)
{
  cp_decl_specifier_seq type_specifier_seq;
  cp_declarator *abstract_declarator;

  /* Parse the type-specifier-seq.  */
  FUNC3 (parser, /*is_condition=*/false,
				&type_specifier_seq);
  if (type_specifier_seq.type == error_mark_node)
    return error_mark_node;

  /* There might or might not be an abstract declarator.  */
  FUNC2 (parser);
  /* Look for the declarator.  */
  abstract_declarator
    = FUNC0 (parser, CP_PARSER_DECLARATOR_ABSTRACT, NULL,
			    /*parenthesized_p=*/NULL,
			    /*member_p=*/false);
  /* Check to see if there really was a declarator.  */
  if (!FUNC1 (parser))
    abstract_declarator = NULL;

  return FUNC4 (&type_specifier_seq, abstract_declarator);
}