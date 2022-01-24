#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct objalloc {int dummy; } ;
struct TYPE_4__ {scalar_t__ memory; int /*<<< orphan*/  section_htab; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct objalloc*) ; 

void
FUNC3 (bfd *abfd)
{
  if (abfd->memory)
    {
      FUNC0 (&abfd->section_htab);
      FUNC2 ((struct objalloc *) abfd->memory);
    }
  FUNC1 (abfd);
}