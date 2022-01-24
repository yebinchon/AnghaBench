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
typedef  int /*<<< orphan*/  zfs_deleg_who_type_t ;
struct TYPE_3__ {char const* dp_name; int /*<<< orphan*/  dp_who_type; } ;
typedef  TYPE_1__ deleg_perm_t ;

/* Variables and functions */

__attribute__((used)) static inline void
FUNC0(deleg_perm_t *deleg_perm, zfs_deleg_who_type_t type,
    const char *name)
{
	deleg_perm->dp_who_type = type;
	deleg_perm->dp_name = name;
}