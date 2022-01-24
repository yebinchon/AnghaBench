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
typedef  int /*<<< orphan*/  bfd_target ;
struct TYPE_3__ {int /*<<< orphan*/  const* xvec; int /*<<< orphan*/  target_defaulted; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ ** bfd_default_vector ; 
 int /*<<< orphan*/ ** bfd_target_vector ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

const bfd_target *
FUNC3 (const char *target_name, bfd *abfd)
{
  const char *targname;
  const bfd_target *target;

  if (target_name != NULL)
    targname = target_name;
  else
    targname = FUNC1 ("GNUTARGET");

  /* This is safe; the vector cannot be null.  */
  if (targname == NULL || FUNC2 (targname, "default") == 0)
    {
      if (bfd_default_vector[0] != NULL)
	target = bfd_default_vector[0];
      else
	target = bfd_target_vector[0];
      if (abfd)
	{
	  abfd->xvec = target;
	  abfd->target_defaulted = TRUE;
	}
      return target;
    }

  if (abfd)
    abfd->target_defaulted = FALSE;

  target = FUNC0 (targname);
  if (target == NULL)
    return NULL;

  if (abfd)
    abfd->xvec = target;
  return target;
}