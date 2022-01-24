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
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wrap_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_hash_newfunc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ link_info ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

void
FUNC5 (const char *name)
{
  if (link_info.wrap_hash == NULL)
    {
      link_info.wrap_hash = FUNC4 (sizeof (struct bfd_hash_table));
      if (!FUNC2 (link_info.wrap_hash,
				  bfd_hash_newfunc,
				  sizeof (struct bfd_hash_entry),
				  61))
	FUNC3 (FUNC0("%P%F: bfd_hash_table_init failed: %E\n"));
    }

  if (FUNC1 (link_info.wrap_hash, name, TRUE, TRUE) == NULL)
    FUNC3 (FUNC0("%P%F: bfd_hash_lookup failed: %E\n"));
}