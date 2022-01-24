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
struct symbol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symbol*) ; 
 scalar_t__ STRUCT_DOMAIN ; 
 scalar_t__ FUNC1 (struct symbol*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3 (struct symbol *sym)
{
  if (FUNC1 (sym) == STRUCT_DOMAIN)
    return 1;
  else
    return FUNC2 (FUNC0 (sym));
}