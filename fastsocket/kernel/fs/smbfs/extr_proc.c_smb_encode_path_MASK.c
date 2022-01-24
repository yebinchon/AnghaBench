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
struct TYPE_2__ {scalar_t__ protocol; } ;
struct smb_sb_info {TYPE_1__ opt; } ;
struct qstr {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ SMB_PROTOCOL_COREPLUS ; 
 int FUNC0 (struct smb_sb_info*,char*,int,struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(struct smb_sb_info *server, char *buf, int maxlen,
			   struct dentry *dir, struct qstr *name)
{
	int result;

	result = FUNC0(server, buf, maxlen, dir, name);
	if (result < 0)
		goto out;
	if (server->opt.protocol <= SMB_PROTOCOL_COREPLUS)
		FUNC1(buf, result);
out:
	return result;
}