#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  register_valid_p; scalar_t__ readonly_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  current_gdbarch ; 
 TYPE_1__* current_regcache ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  deprecated_register_valid ; 
 int /*<<< orphan*/  deprecated_registers ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  current_regcache = FUNC1 (current_gdbarch);
  current_regcache->readonly_p = 0;
  deprecated_registers = FUNC0 (current_regcache);
  deprecated_register_valid = current_regcache->register_valid_p;
}