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
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ FUNC1 (struct value*) ; 
 scalar_t__ FUNC2 (struct value*) ; 
 struct type* FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct type*) ; 
 struct value* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct value*) ; 
 struct value* FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct value *
FUNC9 (struct value *val)
{
  struct type *type = FUNC3 (val);
  if (FUNC0 (type) == TYPE_CODE_PTR)
    return FUNC6 (FUNC4 (FUNC5 (type)),
		       FUNC7 (val));
  else
    return FUNC8 (FUNC4 (FUNC5 (type)),
			       FUNC1 (val) + FUNC2 (val));
}