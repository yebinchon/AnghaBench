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
struct itbl_entry {int /*<<< orphan*/  processor; int /*<<< orphan*/  range; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long
FUNC2 (struct itbl_entry *e)
{
  unsigned long opcode;

  opcode = FUNC1 (e->value, e->range);
  opcode |= FUNC0 (e->processor);
  return opcode;
}