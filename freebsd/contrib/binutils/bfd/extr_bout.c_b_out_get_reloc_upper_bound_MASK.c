#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct relocation_info {int dummy; } ;
typedef  TYPE_1__* sec_ptr ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  arelent ;
struct TYPE_8__ {int a_drsize; int a_trsize; } ;
struct TYPE_7__ {int flags; int reloc_count; } ;

/* Variables and functions */
 int SEC_CONSTRUCTOR ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_object ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long
FUNC6 (bfd *abfd, sec_ptr asect)
{
  if (FUNC0 (abfd) != bfd_object)
    {
      FUNC1 (bfd_error_invalid_operation);
      return -1;
    }

  if (asect->flags & SEC_CONSTRUCTOR)
    return sizeof (arelent *) * (asect->reloc_count + 1);

  if (asect == FUNC4 (abfd))
    return (sizeof (arelent *) *
	    ((FUNC2 (abfd)->a_drsize / sizeof (struct relocation_info))
	     + 1));

  if (asect == FUNC5 (abfd))
    return (sizeof (arelent *) *
	    ((FUNC2 (abfd)->a_trsize / sizeof (struct relocation_info))
	     + 1));

  if (asect == FUNC3 (abfd))
    return 0;

  FUNC1 (bfd_error_invalid_operation);
  return -1;
}