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
struct bfd_link_info {int dummy; } ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  check_for_relocs ; 

__attribute__((used)) static bfd_boolean
FUNC2 (bfd *abfd, struct bfd_link_info *info)
{
  bfd_boolean failed = FALSE;

  /* Check if there are any relocations.  */
  FUNC1 (abfd, check_for_relocs, & failed);

  if (failed)
    return FALSE;
  return FUNC0 (abfd, info);
}