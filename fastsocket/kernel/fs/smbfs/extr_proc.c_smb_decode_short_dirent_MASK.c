#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int case_handling; } ;
struct smb_sb_info {int /*<<< orphan*/  local_nls; int /*<<< orphan*/  remote_nls; TYPE_3__* ops; TYPE_2__ opt; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct smb_fattr {char attr; TYPE_1__ f_mtime; TYPE_1__ f_atime; TYPE_1__ f_ctime; int /*<<< orphan*/  f_size; scalar_t__ f_ino; } ;
struct qstr {char* name; int len; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int (* convert ) (unsigned char*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
#define  SMB_CASE_LOWER 129 
#define  SMB_CASE_UPPER 128 
 int /*<<< orphan*/  SMB_MAXNAMELEN ; 
 int /*<<< orphan*/  SMB_STATUS_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* entry ; 
 int /*<<< orphan*/  FUNC4 (struct smb_sb_info*,struct smb_fattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_sb_info*,struct smb_fattr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char*,int) ; 
 int FUNC9 (unsigned char*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC10(struct smb_sb_info *server, char *p,
			struct qstr *qname, struct smb_fattr *fattr,
			unsigned char *name_buf)
{
	int len;

	/*
	 * SMB doesn't have a concept of inode numbers ...
	 */
	FUNC5(server, fattr);
	fattr->f_ino = 0;	/* FIXME: do we need this? */

	p += SMB_STATUS_SIZE;	/* reserved (search_status) */
	fattr->attr = *p;
	fattr->f_mtime.tv_sec = FUNC3(server, FUNC2(p, 3), FUNC2(p, 1));
	fattr->f_mtime.tv_nsec = 0;
	fattr->f_size = FUNC1(p, 5);
	fattr->f_ctime = fattr->f_mtime;
	fattr->f_atime = fattr->f_mtime;
	qname->name = p + 9;
	len = FUNC8(qname->name, 12);

	/*
	 * Trim trailing blanks for Pathworks servers
	 */
	while (len > 2 && qname->name[len-1] == ' ')
		len--;

	FUNC4(server, fattr);

#if 0
	/* FIXME: These only work for ascii chars, and recent smbmount doesn't
	   allow the flag to be set anyway. It kills const. Remove? */
	switch (server->opt.case_handling) {
	case SMB_CASE_UPPER:
		str_upper(entry->name, len);
		break;
	case SMB_CASE_LOWER:
		str_lower(entry->name, len);
		break;
	default:
		break;
	}
#endif

	qname->len = 0;
	len = server->ops->convert(name_buf, SMB_MAXNAMELEN,
				   qname->name, len,
				   server->remote_nls, server->local_nls);
	if (len > 0) {
		qname->len = len;
		qname->name = name_buf;
		FUNC0("len=%d, name=%.*s\n",qname->len,qname->len,qname->name);
	}

	return p + 22;
}