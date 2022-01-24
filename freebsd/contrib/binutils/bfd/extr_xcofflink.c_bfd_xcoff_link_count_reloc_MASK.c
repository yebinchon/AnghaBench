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
struct xcoff_link_hash_entry {int flags; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  ldrel_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int XCOFF_LDREL ; 
 int XCOFF_REF_REGULAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  bfd_error_no_symbols ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_xcoff_flavour ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct bfd_link_info*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC6 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfd_link_info*,struct xcoff_link_hash_entry*) ; 

bfd_boolean
FUNC8 (bfd *output_bfd,
			    struct bfd_link_info *info,
			    const char *name)
{
  struct xcoff_link_hash_entry *h;

  if (FUNC2 (output_bfd) != bfd_target_xcoff_flavour)
    return TRUE;

  h = ((struct xcoff_link_hash_entry *)
       FUNC4 (output_bfd, info, name, FALSE, FALSE,
				     FALSE));
  if (h == NULL)
    {
      FUNC1) (FUNC0("%s: no such symbol"), name);
      FUNC3 (bfd_error_no_symbols);
      return FALSE;
    }

  h->flags |= XCOFF_REF_REGULAR | XCOFF_LDREL;
  ++FUNC6 (info)->ldrel_count;

  /* Mark the symbol to avoid garbage collection.  */
  if (! FUNC7 (info, h))
    return FALSE;

  return TRUE;
}