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
struct v9fs_session_info {scalar_t__ nodev; } ;

/* Variables and functions */
 int P9_DMDEVICE ; 
 int P9_DMDIR ; 
 int P9_DMLINK ; 
 int P9_DMNAMEDPIPE ; 
 int P9_DMSETGID ; 
 int P9_DMSETUID ; 
 int P9_DMSETVTX ; 
 int P9_DMSOCKET ; 
 int P9_DMSYMLINK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int S_ISGID ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int S_ISUID ; 
 int S_ISVTX ; 
 scalar_t__ FUNC6 (struct v9fs_session_info*) ; 

__attribute__((used)) static int FUNC7(struct v9fs_session_info *v9ses, int mode)
{
	int res;
	res = mode & 0777;
	if (FUNC2(mode))
		res |= P9_DMDIR;
	if (FUNC6(v9ses)) {
		if (FUNC4(mode))
			res |= P9_DMSYMLINK;
		if (v9ses->nodev == 0) {
			if (FUNC5(mode))
				res |= P9_DMSOCKET;
			if (FUNC3(mode))
				res |= P9_DMNAMEDPIPE;
			if (FUNC0(mode))
				res |= P9_DMDEVICE;
			if (FUNC1(mode))
				res |= P9_DMDEVICE;
		}

		if ((mode & S_ISUID) == S_ISUID)
			res |= P9_DMSETUID;
		if ((mode & S_ISGID) == S_ISGID)
			res |= P9_DMSETGID;
		if ((mode & S_ISVTX) == S_ISVTX)
			res |= P9_DMSETVTX;
		if ((mode & P9_DMLINK))
			res |= P9_DMLINK;
	}

	return res;
}