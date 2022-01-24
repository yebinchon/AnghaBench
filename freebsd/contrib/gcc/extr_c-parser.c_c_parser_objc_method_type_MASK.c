#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
#define  CPP_MINUS 129 
#define  CPP_PLUS 128 
 int MINUS_EXPR ; 
 int PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static enum tree_code
FUNC3 (c_parser *parser)
{
  switch (FUNC1 (parser)->type)
    {
    case CPP_PLUS:
      FUNC0 (parser);
      return PLUS_EXPR;
    case CPP_MINUS:
      FUNC0 (parser);
      return MINUS_EXPR;
    default:
      FUNC2 ();
    }
}