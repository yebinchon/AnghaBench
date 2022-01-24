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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dmu_replay_record_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 

int
FUNC1(const char *snapname, nvlist_t *props,
    const char *origin, boolean_t force, boolean_t resumable, int fd,
    const dmu_replay_record_t *begin_record)
{
	if (begin_record == NULL)
		return (EINVAL);
	return (FUNC0(snapname, props, origin, force, resumable, fd,
	    begin_record));
}