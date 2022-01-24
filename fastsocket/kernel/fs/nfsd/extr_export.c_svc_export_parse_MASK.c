#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* dentry; } ;
struct TYPE_5__ {scalar_t__ expiry_time; int /*<<< orphan*/  flags; } ;
struct svc_export {char* ex_pathname; int ex_flags; int ex_anon_uid; int ex_anon_gid; int ex_fsid; char* ex_uuid; TYPE_3__ ex_path; int /*<<< orphan*/  ex_fslocs; TYPE_1__ h; struct auth_domain* ex_client; } ;
struct cache_detail {int dummy; } ;
struct auth_domain {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_NEGATIVE ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct auth_domain* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_domain*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_export*) ; 
 int FUNC6 (char**,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char**) ; 
 int FUNC8 (char**,int*) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC12 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int FUNC16 (char**,char*,int /*<<< orphan*/ ) ; 
 int FUNC17 (char**,char*,struct svc_export*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 struct svc_export* FUNC20 (struct svc_export*) ; 
 struct svc_export* FUNC21 (struct svc_export*,struct svc_export*) ; 

__attribute__((used)) static int FUNC22(struct cache_detail *cd, char *mesg, int mlen)
{
	/* client path expiry [flags anonuid anongid fsid] */
	char *buf;
	int len;
	int err;
	struct auth_domain *dom = NULL;
	struct svc_export exp = {}, *expp;
	int an_int;

	if (mesg[mlen-1] != '\n')
		return -EINVAL;
	mesg[mlen-1] = 0;
	FUNC4("svc_export_parse: '%s'\n", mesg);

	buf = FUNC11(PAGE_SIZE, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	/* client */
	err = -EINVAL;
	len = FUNC16(&mesg, buf, PAGE_SIZE);
	if (len <= 0)
		goto out;

	err = -ENOENT;
	dom = FUNC0(buf);
	if (!dom)
		goto out;

	/* path */
	err = -EINVAL;
	if ((len = FUNC16(&mesg, buf, PAGE_SIZE)) <= 0)
		goto out1;

	err = FUNC9(buf, 0, &exp.ex_path);
	if (err)
		goto out1;

	exp.ex_client = dom;

	err = -ENOMEM;
	exp.ex_pathname = FUNC13(buf, GFP_KERNEL);
	if (!exp.ex_pathname)
		goto out2;

	/* expiry */
	err = -EINVAL;
	exp.h.expiry_time = FUNC7(&mesg);
	if (exp.h.expiry_time == 0)
		goto out3;

	/* flags */
	err = FUNC8(&mesg, &an_int);
	if (err == -ENOENT) {
		err = 0;
		FUNC18(CACHE_NEGATIVE, &exp.h.flags);
	} else {
		if (err || an_int < 0)
			goto out3;
		exp.ex_flags= an_int;
	
		/* anon uid */
		err = FUNC8(&mesg, &an_int);
		if (err)
			goto out3;
		exp.ex_anon_uid= an_int;

		/* anon gid */
		err = FUNC8(&mesg, &an_int);
		if (err)
			goto out3;
		exp.ex_anon_gid= an_int;

		/* fsid */
		err = FUNC8(&mesg, &an_int);
		if (err)
			goto out3;
		exp.ex_fsid = an_int;

		while ((len = FUNC16(&mesg, buf, PAGE_SIZE)) > 0) {
			if (FUNC19(buf, "fsloc") == 0)
				err = FUNC6(&mesg, buf, &exp.ex_fslocs);
			else if (FUNC19(buf, "uuid") == 0) {
				/* expect a 16 byte uuid encoded as \xXXXX... */
				len = FUNC16(&mesg, buf, PAGE_SIZE);
				if (len != 16)
					err  = -EINVAL;
				else {
					exp.ex_uuid =
						FUNC12(buf, 16, GFP_KERNEL);
					if (exp.ex_uuid == NULL)
						err = -ENOMEM;
				}
			} else if (FUNC19(buf, "secinfo") == 0)
				err = FUNC17(&mesg, buf, &exp);
			else
				/* quietly ignore unknown words and anything
				 * following. Newer user-space can try to set
				 * new values, then see what the result was.
				 */
				break;
			if (err)
				goto out4;
		}

		err = FUNC3(exp.ex_path.dentry->d_inode, &exp.ex_flags,
				   exp.ex_uuid);
		if (err)
			goto out4;
	}

	expp = FUNC20(&exp);
	if (expp)
		expp = FUNC21(&exp, expp);
	else
		err = -ENOMEM;
	FUNC2();
	if (expp == NULL)
		err = -ENOMEM;
	else
		FUNC5(expp);
out4:
	FUNC14(&exp.ex_fslocs);
	FUNC10(exp.ex_uuid);
out3:
	FUNC10(exp.ex_pathname);
out2:
	FUNC15(&exp.ex_path);
out1:
	FUNC1(dom);
out:
	FUNC10(buf);
	if (err)
		FUNC4("svc_export_parse: err %d\n", err);
	return err;
}