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
struct TYPE_2__ {scalar_t__ expiry_time; scalar_t__ flags; } ;
struct svc_expkey {int ek_fsidtype; TYPE_1__ h; int /*<<< orphan*/  ek_path; int /*<<< orphan*/  ek_fsid; struct auth_domain* ek_client; } ;
struct cache_detail {int dummy; } ;
struct auth_domain {int dummy; } ;

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
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (char**) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC14 (char*,char**,int) ; 
 int /*<<< orphan*/  svc_expkey_cache ; 
 struct svc_expkey* FUNC15 (struct svc_expkey*) ; 
 struct svc_expkey* FUNC16 (struct svc_expkey*,struct svc_expkey*) ; 

__attribute__((used)) static int FUNC17(struct cache_detail *cd, char *mesg, int mlen)
{
	/* client fsidtype fsid [path] */
	char *buf;
	int len;
	struct auth_domain *dom = NULL;
	int err;
	int fsidtype;
	char *ep;
	struct svc_expkey key;
	struct svc_expkey *ek = NULL;

	if (mesg[mlen-1] != '\n')
		return -EINVAL;
	mesg[mlen-1] = 0;
	FUNC4("expkey_parse: '%s'\n", mesg);

	buf = FUNC9(PAGE_SIZE, GFP_KERNEL);
	err = -ENOMEM;
	if (!buf)
		goto out;

	err = -EINVAL;
	if ((len=FUNC12(&mesg, buf, PAGE_SIZE)) <= 0)
		goto out;

	err = -ENOENT;
	dom = FUNC0(buf);
	if (!dom)
		goto out;
	FUNC4("found domain %s\n", buf);

	err = -EINVAL;
	if ((len=FUNC12(&mesg, buf, PAGE_SIZE)) <= 0)
		goto out;
	fsidtype = FUNC14(buf, &ep, 10);
	if (*ep)
		goto out;
	FUNC4("found fsidtype %d\n", fsidtype);
	if (FUNC7(fsidtype)==0) /* invalid type */
		goto out;
	if ((len=FUNC12(&mesg, buf, PAGE_SIZE)) <= 0)
		goto out;
	FUNC4("found fsid length %d\n", len);
	if (len != FUNC7(fsidtype))
		goto out;

	/* OK, we seem to have a valid key */
	key.h.flags = 0;
	key.h.expiry_time = FUNC5(&mesg);
	if (key.h.expiry_time == 0)
		goto out;

	key.ek_client = dom;	
	key.ek_fsidtype = fsidtype;
	FUNC10(key.ek_fsid, buf, len);

	ek = FUNC15(&key);
	err = -ENOMEM;
	if (!ek)
		goto out;

	/* now we want a pathname, or empty meaning NEGATIVE  */
	err = -EINVAL;
	len = FUNC12(&mesg, buf, PAGE_SIZE);
	if (len < 0)
		goto out;
	FUNC4("Path seems to be <%s>\n", buf);
	err = 0;
	if (len == 0) {
		FUNC13(CACHE_NEGATIVE, &key.h.flags);
		ek = FUNC16(&key, ek);
		if (!ek)
			err = -ENOMEM;
	} else {
		err = FUNC6(buf, 0, &key.ek_path);
		if (err)
			goto out;

		FUNC4("Found the path %s\n", buf);

		ek = FUNC16(&key, ek);
		if (!ek)
			err = -ENOMEM;
		FUNC11(&key.ek_path);
	}
	FUNC2();
 out:
	if (ek)
		FUNC3(&ek->h, &svc_expkey_cache);
	if (dom)
		FUNC1(dom);
	FUNC8(buf);
	if (err)
		FUNC4("expkey_parse: err %d\n", err);
	return err;
}