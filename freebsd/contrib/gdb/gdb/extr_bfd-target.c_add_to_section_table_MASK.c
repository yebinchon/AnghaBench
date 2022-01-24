#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct section_closure {TYPE_1__* end; } ;
struct bfd_section {int dummy; } ;
struct bfd {int dummy; } ;
typedef  int flagword ;
struct TYPE_2__ {scalar_t__ addr; scalar_t__ endaddr; struct bfd_section* the_bfd_section; struct bfd* bfd; } ;

/* Variables and functions */
 int SEC_ALLOC ; 
 int FUNC0 (struct bfd*,struct bfd_section*) ; 
 scalar_t__ FUNC1 (struct bfd*,struct bfd_section*) ; 
 scalar_t__ FUNC2 (struct bfd*,struct bfd_section*) ; 

__attribute__((used)) static void
FUNC3 (struct bfd *abfd, struct bfd_section *asect,
		      void *closure)
{
  struct section_closure *pp = closure;
  flagword aflag;

  /* NOTE: cagney/2003-10-22: Is this pruning useful?  */
  aflag = FUNC0 (abfd, asect);
  if (!(aflag & SEC_ALLOC))
    return;
  if (FUNC1 (abfd, asect) == 0)
    return;
  pp->end->bfd = abfd;
  pp->end->the_bfd_section = asect;
  pp->end->addr = FUNC2 (abfd, asect);
  pp->end->endaddr = pp->end->addr + FUNC1 (abfd, asect);
  pp->end++;
}