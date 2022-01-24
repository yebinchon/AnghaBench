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
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  gp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_object ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_ecoff_flavour ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC4 (bfd *abfd, bfd_vma gp_value)
{
  if (FUNC0 (abfd) != bfd_target_ecoff_flavour
      || FUNC1 (abfd) != bfd_object)
    {
      FUNC2 (bfd_error_invalid_operation);
      return FALSE;
    }

  FUNC3 (abfd)->gp = gp_value;

  return TRUE;
}