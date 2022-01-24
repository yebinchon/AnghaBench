#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct c_type_name {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ keyword; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ c_token ;
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 scalar_t__ CPP_KEYWORD ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ RID_BYCOPY ; 
 scalar_t__ RID_BYREF ; 
 scalar_t__ RID_IN ; 
 scalar_t__ RID_INOUT ; 
 scalar_t__ RID_ONEWAY ; 
 scalar_t__ RID_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 struct c_type_name* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct c_type_name*) ; 

__attribute__((used)) static tree
FUNC7 (c_parser *parser)
{
  tree quals = NULL_TREE;
  struct c_type_name *typename = NULL;
  tree type = NULL_TREE;
  while (true)
    {
      c_token *token = FUNC3 (parser);
      if (token->type == CPP_KEYWORD
	  && (token->keyword == RID_IN
	      || token->keyword == RID_OUT
	      || token->keyword == RID_INOUT
	      || token->keyword == RID_BYCOPY
	      || token->keyword == RID_BYREF
	      || token->keyword == RID_ONEWAY))
	{
	  /* APPLE LOCAL radar 4301047 (in 4.2 z) */
	  quals = FUNC5 (FUNC0 (NULL_TREE, token->value), quals);
	  FUNC1 (parser);
	}
      else
	break;
    }
  if (FUNC2 (parser))
    typename = FUNC4 (parser);
  if (typename)
    type = FUNC6 (typename);
  return FUNC0 (quals, type);
}