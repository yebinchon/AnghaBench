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
struct loop {int dummy; } ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct loop*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct loop*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct loop*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (struct loop*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9 (struct loop *loop)
{
  bitmap may_exit = FUNC0 (NULL);
  bitmap always_reached = FUNC0 (NULL);
  bitmap has_exit = FUNC0 (NULL);
  bitmap always_executed = FUNC0 (NULL);
  basic_block *body = FUNC7 (loop);

  FUNC4 (loop, body, may_exit, has_exit);
  FUNC2 (loop, body, may_exit, always_reached);
  FUNC2 (loop, body, has_exit, always_executed);

  FUNC3 (loop, body);
  FUNC5 (loop, body, always_reached, always_executed);
  FUNC8 ();

  FUNC1 (always_reached);
  FUNC1 (always_executed);
  FUNC1 (may_exit);
  FUNC1 (has_exit);
  FUNC6 (body);
}