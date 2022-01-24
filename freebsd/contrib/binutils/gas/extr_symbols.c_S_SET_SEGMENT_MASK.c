#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* bsym; } ;
typedef  TYPE_2__ symbolS ;
struct local_symbol {scalar_t__ lsy_section; } ;
typedef  scalar_t__ segT ;
struct TYPE_6__ {int flags; scalar_t__ section; } ;

/* Variables and functions */
 int BSF_SECTION_SYM ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 (struct local_symbol*) ; 
 scalar_t__ reg_section ; 

void
FUNC3 (symbolS *s, segT seg)
{
  /* Don't reassign section symbols.  The direct reason is to prevent seg
     faults assigning back to const global symbols such as *ABS*, but it
     shouldn't happen anyway.  */

  if (FUNC0 (s))
    {
      if (seg == reg_section)
	s = FUNC2 ((struct local_symbol *) s);
      else
	{
	  ((struct local_symbol *) s)->lsy_section = seg;
	  return;
	}
    }

  if (s->bsym->flags & BSF_SECTION_SYM)
    {
      if (s->bsym->section != seg)
	FUNC1 ();
    }
  else
    s->bsym->section = seg;
}