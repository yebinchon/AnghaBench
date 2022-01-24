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
struct agent_expr {int /*<<< orphan*/  scope; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct agent_expr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct agent_expr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (struct agent_expr *ax)
{
  int frame_reg;
  LONGEST frame_offset;

  FUNC0 (ax->scope, &frame_reg, &frame_offset);
  FUNC1 (ax, frame_reg);
  FUNC2 (ax, frame_offset);
}