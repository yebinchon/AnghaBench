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
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2 (char * op)
{
  if (!(FUNC1 (op, "bal") || FUNC1 (op, "beq0b") || FUNC1 (op, "bnq0b")
	|| FUNC1 (op, "beq0w") || FUNC1 (op, "bnq0w")))
    if ((op[0] == 'b') && (FUNC0 (op) != NULL))
      return 1;
  return 0;
}