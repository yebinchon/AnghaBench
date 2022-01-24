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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  LABEL_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  RID_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ c_break_label ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  flag_isoc99 ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC13 (c_parser *parser)
{
  tree block, expr, body, save_break;
  FUNC12 (FUNC8 (parser, RID_SWITCH));
  FUNC6 (parser);
  block = FUNC2 (flag_isoc99);
  if (FUNC9 (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    {
      expr = FUNC7 (parser).value;
      FUNC10 (parser, CPP_CLOSE_PAREN, "expected %<)%>");
    }
  else
    expr = error_mark_node;
  FUNC11 (expr);
  save_break = c_break_label;
  c_break_label = NULL_TREE;
  body = FUNC5 (parser);
  FUNC4 (body);
  if (c_break_label)
    FUNC0 (FUNC1 (LABEL_EXPR, void_type_node, c_break_label));
  c_break_label = save_break;
  FUNC0 (FUNC3 (block, flag_isoc99));
}