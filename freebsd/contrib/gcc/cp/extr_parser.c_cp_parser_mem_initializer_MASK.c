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
struct TYPE_5__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int in_base_initializer ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ void_type_node ; 

__attribute__((used)) static tree
FUNC7 (cp_parser* parser)
{
  tree mem_initializer_id;
  tree expression_list;
  tree member;

  /* Find out what is being initialized.  */
  if (FUNC2 (parser->lexer, CPP_OPEN_PAREN))
    {
      FUNC6 ("anachronistic old-style base class initializer");
      mem_initializer_id = NULL_TREE;
    }
  else
    mem_initializer_id = FUNC3 (parser);
  member = FUNC5 (mem_initializer_id);
  if (member && !FUNC0 (member))
    in_base_initializer = 1;

  expression_list
    = FUNC4 (parser, false,
					       /*cast_p=*/false,
					       /*non_constant_p=*/NULL);
  if (expression_list == error_mark_node)
    return error_mark_node;
  if (!expression_list)
    expression_list = void_type_node;

  in_base_initializer = 0;

  return member ? FUNC1 (member, expression_list) : error_mark_node;
}