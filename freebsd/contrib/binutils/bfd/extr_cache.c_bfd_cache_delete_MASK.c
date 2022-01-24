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
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_4__ {int /*<<< orphan*/ * iostream; } ;
typedef  TYPE_1__ bfd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_files ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd *abfd)
{
  bfd_boolean ret;

  if (FUNC1 ((FILE *) abfd->iostream) == 0)
    ret = TRUE;
  else
    {
      ret = FALSE;
      FUNC0 (bfd_error_system_call);
    }

  FUNC2 (abfd);

  abfd->iostream = NULL;
  --open_files;

  return ret;
}