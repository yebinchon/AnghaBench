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
struct path {int dummy; } ;

/* Variables and functions */
 long EINVAL ; 
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 int MNT_NOATIME ; 
 int MNT_NODEV ; 
 int MNT_NODIRATIME ; 
 int MNT_NOEXEC ; 
 int MNT_NOSUID ; 
 int MNT_READONLY ; 
 int MNT_RELATIME ; 
 unsigned long MS_ACTIVE ; 
 unsigned long MS_BIND ; 
 unsigned long MS_BORN ; 
 unsigned long MS_KERNMOUNT ; 
 unsigned long MS_MGC_MSK ; 
 unsigned long MS_MGC_VAL ; 
 unsigned long MS_MOVE ; 
 unsigned long MS_NOATIME ; 
 unsigned long MS_NODEV ; 
 unsigned long MS_NODIRATIME ; 
 unsigned long MS_NOEXEC ; 
 unsigned long MS_NOSUID ; 
 unsigned long MS_PRIVATE ; 
 unsigned long MS_RDONLY ; 
 unsigned long MS_REC ; 
 unsigned long MS_RELATIME ; 
 unsigned long MS_REMOUNT ; 
 unsigned long MS_SHARED ; 
 unsigned long MS_SLAVE ; 
 unsigned long MS_STRICTATIME ; 
 unsigned long MS_UNBINDABLE ; 
 int PAGE_SIZE ; 
 int FUNC0 (struct path*,unsigned long) ; 
 int FUNC1 (struct path*,char*,unsigned long) ; 
 int FUNC2 (struct path*,char*) ; 
 int FUNC3 (struct path*,char*,unsigned long,int,char*,void*) ; 
 int FUNC4 (struct path*,unsigned long,int,void*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct path*) ; 
 int FUNC8 (char*,struct path*,char*,unsigned long,void*) ; 

long FUNC9(char *dev_name, const char *dir_name, char *type_page,
		  unsigned long flags, void *data_page)
{
	struct path path;
	int retval = 0;
	int mnt_flags = 0;

	/* Discard magic */
	if ((flags & MS_MGC_MSK) == MS_MGC_VAL)
		flags &= ~MS_MGC_MSK;

	/* Basic sanity checks */

	if (!dir_name || !*dir_name || !FUNC6(dir_name, 0, PAGE_SIZE))
		return -EINVAL;

	if (data_page)
		((char *)data_page)[PAGE_SIZE - 1] = 0;

	/* Default to relatime unless overriden */
	if (!(flags & MS_NOATIME))
		mnt_flags |= MNT_RELATIME;

	/* Separate the per-mountpoint flags */
	if (flags & MS_NOSUID)
		mnt_flags |= MNT_NOSUID;
	if (flags & MS_NODEV)
		mnt_flags |= MNT_NODEV;
	if (flags & MS_NOEXEC)
		mnt_flags |= MNT_NOEXEC;
	if (flags & MS_NOATIME)
		mnt_flags |= MNT_NOATIME;
	if (flags & MS_NODIRATIME)
		mnt_flags |= MNT_NODIRATIME;
	if (flags & MS_STRICTATIME)
		mnt_flags &= ~(MNT_RELATIME | MNT_NOATIME);
	if (flags & MS_RDONLY)
		mnt_flags |= MNT_READONLY;

	flags &= ~(MS_NOSUID | MS_NOEXEC | MS_NODEV | MS_ACTIVE | MS_BORN |
		   MS_NOATIME | MS_NODIRATIME | MS_RELATIME| MS_KERNMOUNT |
		   MS_STRICTATIME);

	/* ... and get the mountpoint */
	retval = FUNC5(dir_name, LOOKUP_FOLLOW, &path);
	if (retval)
		return retval;

	retval = FUNC8(dev_name, &path,
				   type_page, flags, data_page);
	if (retval)
		goto dput_out;

	if (flags & MS_REMOUNT)
		retval = FUNC4(&path, flags & ~MS_REMOUNT, mnt_flags,
				    data_page);
	else if (flags & MS_BIND)
		retval = FUNC1(&path, dev_name, flags & MS_REC);
	else if (flags & (MS_SHARED | MS_PRIVATE | MS_SLAVE | MS_UNBINDABLE))
		retval = FUNC0(&path, flags);
	else if (flags & MS_MOVE)
		retval = FUNC2(&path, dev_name);
	else
		retval = FUNC3(&path, type_page, flags, mnt_flags,
				      dev_name, data_page);
dput_out:
	FUNC7(&path);
	return retval;
}