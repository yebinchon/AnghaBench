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
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_REF ; 
 scalar_t__ FUNC2 (struct value*) ; 
 scalar_t__ FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 struct value* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct value*) ; 
 struct value* FUNC6 (struct value*) ; 

__attribute__((used)) static struct value *
FUNC7 (struct value *val0)
{
  if (FUNC1 (FUNC4 (val0)) == TYPE_CODE_REF)
    {
      struct value *val = val0;
      FUNC0 (val);
      val = FUNC6 (val);
      return FUNC5 (FUNC4 (val), 0,
				 FUNC2 (val) + FUNC3 (val),
				 val);
    }
  else
    return val0;
}