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
struct value {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct value*) ; 
 scalar_t__ FUNC1 (struct value*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 struct value* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct value*) ; 
 struct value* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 

struct value *
FUNC6 (struct value *val0)
{
  struct value *val = FUNC4 (FUNC5 (val0));
  return FUNC3 (FUNC2 (val), 0,
			     FUNC0 (val) + FUNC1 (val), val);
}