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
struct expression {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct expression**,int*,int,struct type*) ; 

void
FUNC1 (struct expression **expp, struct type *context_type)
{
  int pc;
  pc = 0;
  FUNC0 (expp, &pc, 1, context_type);
}