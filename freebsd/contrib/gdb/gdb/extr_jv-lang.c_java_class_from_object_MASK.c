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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 struct value* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct value* FUNC7 (struct value**,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*) ; 

struct value *
FUNC8 (struct value *obj_val)
{
  /* This is all rather inefficient, since the offsets of vtable and
     class are fixed.  FIXME */
  struct value *vtable_val;

  if (FUNC0 (FUNC3 (obj_val)) == TYPE_CODE_PTR
      && FUNC1 (FUNC2 (FUNC3 (obj_val))) == 0)
    obj_val = FUNC6 (FUNC4 (),
			FUNC5 (obj_val), NULL);

  vtable_val = FUNC7 (&obj_val, NULL, "vtable", NULL, "structure");
  return FUNC7 (&vtable_val, NULL, "class", NULL, "structure");
}