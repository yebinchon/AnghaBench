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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;

/* Variables and functions */
 int LZC_SEND_FLAG_COMPRESS ; 
 int LZC_SEND_FLAG_EMBED_DATA ; 
 int LZC_SEND_FLAG_LARGE_BLOCK ; 
 int /*<<< orphan*/  ZFS_IOC_SEND_SPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(const char *snapname, const char *from,
    enum lzc_send_flags flags, uint64_t *spacep)
{
	nvlist_t *args;
	nvlist_t *result;
	int err;

	args = FUNC2();
	if (from != NULL)
		FUNC1(args, "from", from);
	if (flags & LZC_SEND_FLAG_LARGE_BLOCK)
		FUNC0(args, "largeblockok");
	if (flags & LZC_SEND_FLAG_EMBED_DATA)
		FUNC0(args, "embedok");
	if (flags & LZC_SEND_FLAG_COMPRESS)
		FUNC0(args, "compressok");
	err = FUNC4(ZFS_IOC_SEND_SPACE, snapname, args, &result);
	FUNC5(args);
	if (err == 0)
		*spacep = FUNC3(result, "space");
	FUNC5(result);
	return (err);
}