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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct minimal_symbol*) ; 
 struct minimal_symbol* FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3 (CORE_ADDR memaddr)
{
  struct minimal_symbol *sym;

  /* If bit 0 of the address is set, assume this is a Thumb address.  */
  if (FUNC0 (memaddr))
    return 1;

  /* Thumb functions have a "special" bit set in minimal symbols.  */
  sym = FUNC2 (memaddr);
  if (sym)
    {
      return (FUNC1 (sym));
    }
  else
    {
      return 0;
    }
}