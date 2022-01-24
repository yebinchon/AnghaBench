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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int word_mode ; 

__attribute__((used)) static rtx
FUNC8 (enum machine_mode mode, rtx op)
{
  enum machine_mode wider_mode;

  if (mode == word_mode)
    return FUNC7 (mode, op);

  FUNC6 (!FUNC2 (mode));

  wider_mode = FUNC1 (mode);
  op = FUNC5 (RSHIFT_EXPR, wider_mode, op,
		     FUNC3 (NULL_TREE, FUNC0 (mode)), 0, 1);
  return FUNC4 (mode, wider_mode, op, 0);
}