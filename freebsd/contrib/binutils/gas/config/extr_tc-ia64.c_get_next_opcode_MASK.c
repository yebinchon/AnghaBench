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
struct ia64_opcode {int dummy; } ;

/* Variables and functions */
 struct ia64_opcode* FUNC0 (struct ia64_opcode*) ; 
 int /*<<< orphan*/  FUNC1 (struct ia64_opcode*) ; 

__attribute__((used)) static struct ia64_opcode *
FUNC2 (struct ia64_opcode *idesc)
{
  struct ia64_opcode *next = FUNC0 (idesc);
  FUNC1 (idesc);
  return next;
}