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
typedef  TYPE_1__* sec_ptr ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  arelent ;
struct TYPE_3__ {int flags; int reloc_count; } ;

/* Variables and functions */
 int SEC_DEBUGGING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long
FUNC1 (bfd *abfd, sec_ptr asect)
{
  if ((asect->flags & SEC_DEBUGGING) != 0)
    return 0;
  if (! FUNC0 (abfd))
    return -1;
  return (asect->reloc_count + 1) * sizeof (arelent *);
}