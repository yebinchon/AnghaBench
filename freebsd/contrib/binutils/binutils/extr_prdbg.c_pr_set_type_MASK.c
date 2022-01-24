#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pr_handle {int dummy; } ;
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pr_handle*,char*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (void *p, bfd_boolean bitstringp)
{
  struct pr_handle *info = (struct pr_handle *) p;

  if (! FUNC2 (info, ""))
    return FALSE;

  if (! FUNC1 (info, "set { ")
      || ! FUNC0 (info, " }"))
    return FALSE;

  if (bitstringp)
    {
      if (! FUNC0 (info, "/* bitstring */"))
	return FALSE;
    }

  return TRUE;
}