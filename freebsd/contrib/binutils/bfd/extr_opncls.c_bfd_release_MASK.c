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
struct objalloc {int dummy; } ;
struct TYPE_3__ {scalar_t__ memory; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct objalloc*,void*) ; 

void
FUNC1 (bfd *abfd, void *block)
{
  FUNC0 ((struct objalloc *) abfd->memory, block);
}