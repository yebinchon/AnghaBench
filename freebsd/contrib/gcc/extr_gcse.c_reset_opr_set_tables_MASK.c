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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  reg_set_bitmap ; 

__attribute__((used)) static void
FUNC2 (void)
{
  /* Maintain a bitmap of which regs have been set since beginning of
     the block.  */
  FUNC0 (reg_set_bitmap);

  /* Also keep a record of the last instruction to modify memory.
     For now this is very trivial, we only record whether any memory
     location has been modified.  */
  FUNC1 ();
}