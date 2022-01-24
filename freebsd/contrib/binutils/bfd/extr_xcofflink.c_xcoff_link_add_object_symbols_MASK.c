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
struct bfd_link_info {int /*<<< orphan*/  keep_memory; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd *abfd, struct bfd_link_info *info)
{
  if (! FUNC1 (abfd))
    return FALSE;
  if (! FUNC2 (abfd, info))
    return FALSE;
  if (! info->keep_memory)
    {
      if (! FUNC0 (abfd))
	return FALSE;
    }
  return TRUE;
}