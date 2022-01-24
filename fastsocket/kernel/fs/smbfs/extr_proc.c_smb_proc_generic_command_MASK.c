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
struct smb_sb_info {int dummy; } ;
struct smb_request {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct smb_sb_info* FUNC0 (struct dentry*) ; 
 struct smb_request* FUNC1 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct smb_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_request*,char*) ; 
 char* FUNC5 (struct smb_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct smb_request*,char**,struct dentry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct dentry *dentry, __u8 command)
{
	struct smb_sb_info *server = FUNC0(dentry);
	char *p;
	int result;
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC1(server, PAGE_SIZE)))
		goto out;

	p = FUNC5(req, command, 0, 0);
	result = FUNC6(req, &p, dentry, NULL);
	if (result < 0)
		goto out_free;
	FUNC4(req, p);

	result = FUNC2(req, command, 0, 0);
	if (result < 0)
		goto out_free;
	result = 0;

out_free:
	FUNC3(req);
out:
	return result;
}