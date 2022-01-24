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
struct constraint_expr {scalar_t__ type; scalar_t__ var; scalar_t__ offset; } ;

/* Variables and functions */

__attribute__((used)) static bool
FUNC0 (struct constraint_expr a, struct constraint_expr b)
{
  if (a.type == b.type)
    {
      if (a.var == b.var)
	return a.offset < b.offset;
      else
	return a.var < b.var;
    }
  else
    return a.type < b.type;
}