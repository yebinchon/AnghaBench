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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  location_t ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int /*<<< orphan*/  location; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RID_ELSE ; 
 int /*<<< orphan*/  RID_IF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flag_isoc99 ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static void
FUNC10 (c_parser *parser)
{
  tree block;
  location_t loc;
  tree cond;
  bool first_if = false, second_if = false;
  tree first_body, second_body;
  FUNC9 (FUNC6 (parser, RID_IF));
  FUNC4 (parser);
  block = FUNC1 (flag_isoc99);
  loc = FUNC8 (parser)->location;
  cond = FUNC7 (parser);
  first_body = FUNC5 (parser, &first_if);
  if (FUNC6 (parser, RID_ELSE))
    {
      FUNC4 (parser);
      second_body = FUNC5 (parser, &second_if);
    }
  else
    second_body = NULL_TREE;
  FUNC3 (loc, cond, first_body, second_body, first_if);
  FUNC0 (FUNC2 (block, flag_isoc99));
}