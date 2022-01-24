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
struct type {int dummy; } ;

/* Variables and functions */
 int TARGET_CHAR_BIT ; 
 int FUNC0 (struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct type* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vtable_field_virtual_functions ; 
 int /*<<< orphan*/  vtable_type_gdbarch_data ; 

__attribute__((used)) static int
FUNC2 (void)
{
  struct type *vtable_type = FUNC1 (current_gdbarch,
					   vtable_type_gdbarch_data);

  return (FUNC0 (vtable_type, vtable_field_virtual_functions)
          / TARGET_CHAR_BIT);
}