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
typedef  int CORE_ADDR ;

/* Variables and functions */
 char* FUNC0 (struct minimal_symbol*) ; 
 struct minimal_symbol* FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long,int) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

CORE_ADDR
FUNC4 (CORE_ADDR pc, char *name)
{
  if (pc && FUNC2 (pc, 2) == 0x25ff) /* jmp *(dest) */
    {
      unsigned long indirect = FUNC2 (pc + 2, 4);
      struct minimal_symbol *indsym =
	indirect ? FUNC1 (indirect) : 0;
      char *symname = indsym ? FUNC0 (indsym) : 0;

      if (symname)
	{
	  if (FUNC3 (symname, "__imp_", 6) == 0
	      || FUNC3 (symname, "_imp_", 5) == 0)
	    return name ? 1 : FUNC2 (indirect, 4);
	}
    }
  return 0;			/* Not a trampoline.  */
}