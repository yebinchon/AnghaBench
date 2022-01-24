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
struct ia64_opcode {scalar_t__ ent_index; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct ia64_opcode* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

struct ia64_opcode *
FUNC1 (struct ia64_opcode *prev_ent)
{
  return FUNC0 (prev_ent->name,
				    prev_ent->ent_index + 1);
}