#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; int flags; int /*<<< orphan*/  section; } ;
typedef  TYPE_1__ asymbol ;

/* Variables and functions */
 int BSF_DEBUGGING ; 
 int BSF_SECTION_SYM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long
FUNC2 (asymbol **symbols, long count)
{
  asymbol **in_ptr = symbols, **out_ptr = symbols;

  while (--count >= 0)
    {
      asymbol *sym = *in_ptr++;

      if (sym->name == NULL || sym->name[0] == '\0')
	continue;
      if (sym->flags & (BSF_DEBUGGING | BSF_SECTION_SYM))
	continue;
      if (FUNC1 (sym->section)
	  || FUNC0 (sym->section))
	continue;

      *out_ptr++ = sym;
    }
  return out_ptr - symbols;
}