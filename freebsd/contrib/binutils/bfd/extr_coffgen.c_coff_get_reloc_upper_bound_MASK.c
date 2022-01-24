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
struct TYPE_3__ {int reloc_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_object ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

long
FUNC2 (bfd *abfd, sec_ptr asect)
{
  if (FUNC0 (abfd) != bfd_object)
    {
      FUNC1 (bfd_error_invalid_operation);
      return -1;
    }
  return (asect->reloc_count + 1) * sizeof (arelent *);
}