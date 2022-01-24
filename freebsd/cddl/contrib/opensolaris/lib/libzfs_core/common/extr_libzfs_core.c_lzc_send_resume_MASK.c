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
 int /*<<< orphan*/  ZFS_IOC_SEND_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(const char *snapname, const char *from, int fd,
    enum lzc_send_flags flags, uint64_t resumeobj, uint64_t resumeoff)
{
	nvlist_t *args;
	int err;

	args = FUNC4();
	FUNC1(args, "fd", fd);
	if (from != NULL)
		FUNC2(args, "fromsnap", from);
	if (flags & LZC_SEND_FLAG_LARGE_BLOCK)
		FUNC0(args, "largeblockok");
	if (flags & LZC_SEND_FLAG_EMBED_DATA)
		FUNC0(args, "embedok");
	if (flags & LZC_SEND_FLAG_COMPRESS)
		FUNC0(args, "compressok");
	if (resumeobj != 0 || resumeoff != 0) {
		FUNC3(args, "resume_object", resumeobj);
		FUNC3(args, "resume_offset", resumeoff);
	}
	err = FUNC5(ZFS_IOC_SEND_NEW, snapname, args, NULL);
	FUNC6(args);
	return (err);
}