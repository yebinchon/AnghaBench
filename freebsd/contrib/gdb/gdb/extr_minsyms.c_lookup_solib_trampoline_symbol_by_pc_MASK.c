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
struct minimal_symbol {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct minimal_symbol*) ; 
 struct minimal_symbol* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ mst_solib_trampoline ; 

struct minimal_symbol *
FUNC2 (CORE_ADDR pc)
{
  struct minimal_symbol *msymbol = FUNC1 (pc);

  if (msymbol != NULL && FUNC0 (msymbol) == mst_solib_trampoline)
    return msymbol;
  return NULL;
}