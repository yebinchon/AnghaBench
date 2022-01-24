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
struct TYPE_2__ {int /*<<< orphan*/  table; } ;
struct xcoff_link_hash_table {TYPE_1__ root; int /*<<< orphan*/  debug_strtab; } ;
struct bfd_link_hash_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xcoff_link_hash_table*) ; 

void
FUNC3 (struct bfd_link_hash_table *hash)
{
  struct xcoff_link_hash_table *ret = (struct xcoff_link_hash_table *) hash;

  FUNC0 (ret->debug_strtab);
  FUNC1 (&ret->root.table);
  FUNC2 (ret);
}