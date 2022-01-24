#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct smb_sb_info {int /*<<< orphan*/  remote_nls; int /*<<< orphan*/  local_nls; TYPE_3__* ops; TYPE_1__* mnt; } ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_lock; struct dentry* d_parent; TYPE_2__ d_name; } ;
struct TYPE_6__ {int (* convert ) (unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int SMB_MAXPATHLEN ; 
 int SMB_MOUNT_UNICODE ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct smb_sb_info *server, unsigned char *buf,
			  int maxlen,
			  struct dentry *entry, struct qstr *name)
{
	unsigned char *path = buf;
	int len;
	int unicode = (server->mnt->flags & SMB_MOUNT_UNICODE) != 0;

	if (maxlen < (2<<unicode))
		return -ENAMETOOLONG;

	if (maxlen > SMB_MAXPATHLEN + 1)
		maxlen = SMB_MAXPATHLEN + 1;

	if (entry == NULL)
		goto test_name_and_out;

	/*
	 * If IS_ROOT, we have to do no walking at all.
	 */
	if (FUNC0(entry) && !name) {
		*path++ = '\\';
		if (unicode) *path++ = '\0';
		*path++ = '\0';
		if (unicode) *path++ = '\0';
		return path-buf;
	}

	/*
	 * Build the path string walking the tree backward from end to ROOT
	 * and store it in reversed order [see reverse_string()]
	 */
	FUNC1(entry);
	FUNC4(&entry->d_lock);
	while (!FUNC0(entry)) {
		struct dentry *parent;

		if (maxlen < (3<<unicode)) {
			FUNC5(&entry->d_lock);
			FUNC2(entry);
			return -ENAMETOOLONG;
		}

		len = server->ops->convert(path, maxlen-2, 
				      entry->d_name.name, entry->d_name.len,
				      server->local_nls, server->remote_nls);
		if (len < 0) {
			FUNC5(&entry->d_lock);
			FUNC2(entry);
			return len;
		}
		FUNC3(path, len);
		path += len;
		if (unicode) {
			/* Note: reverse order */
			*path++ = '\0';
			maxlen--;
		}
		*path++ = '\\';
		maxlen -= len+1;

		parent = entry->d_parent;
		FUNC1(parent);
		FUNC5(&entry->d_lock);
		FUNC2(entry);
		entry = parent;
		FUNC4(&entry->d_lock);
	}
	FUNC5(&entry->d_lock);
	FUNC2(entry);
	FUNC3(buf, path-buf);

	/* maxlen has space for at least one char */
test_name_and_out:
	if (name) {
		if (maxlen < (3<<unicode))
			return -ENAMETOOLONG;
		*path++ = '\\';
		if (unicode) {
			*path++ = '\0';
			maxlen--;
		}
		len = server->ops->convert(path, maxlen-2, 
				      name->name, name->len,
				      server->local_nls, server->remote_nls);
		if (len < 0)
			return len;
		path += len;
		maxlen -= len+1;
	}
	/* maxlen has space for at least one char */
	*path++ = '\0';
	if (unicode) *path++ = '\0';
	return path-buf;
}