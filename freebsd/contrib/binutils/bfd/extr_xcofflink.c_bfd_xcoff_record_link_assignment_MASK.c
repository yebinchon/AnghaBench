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
struct xcoff_link_hash_entry {int /*<<< orphan*/  flags; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XCOFF_DEF_REGULAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_target_xcoff_flavour ; 
 int /*<<< orphan*/  FUNC1 (struct bfd_link_info*) ; 
 struct xcoff_link_hash_entry* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bfd_boolean
FUNC3 (bfd *output_bfd,
				  struct bfd_link_info *info,
				  const char *name)
{
  struct xcoff_link_hash_entry *h;

  if (FUNC0 (output_bfd) != bfd_target_xcoff_flavour)
    return TRUE;

  h = FUNC2 (FUNC1 (info), name, TRUE, TRUE,
			      FALSE);
  if (h == NULL)
    return FALSE;

  h->flags |= XCOFF_DEF_REGULAR;

  return TRUE;
}