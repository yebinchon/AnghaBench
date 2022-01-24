#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  arelent ;
struct TYPE_5__ {int address; scalar_t__ sym_ptr_ptr; int /*<<< orphan*/  howto; scalar_t__ addend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int relcount ; 
 int relsize ; 
 TYPE_1__* reltab ; 
 scalar_t__ symtab ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC3 (bfd *abfd, int address, int which_howto, int symidx)
{
  if (relcount >= relsize - 1)
    {
      relsize += 10;
      if (reltab)
	reltab = FUNC2 (reltab, relsize * sizeof (arelent));
      else
	reltab = FUNC1 (relsize * sizeof (arelent));
    }
  reltab[relcount].address = address;
  reltab[relcount].addend = 0;
  reltab[relcount].howto = FUNC0 (abfd, which_howto);
  reltab[relcount].sym_ptr_ptr = symtab + symidx;
  relcount++;
}