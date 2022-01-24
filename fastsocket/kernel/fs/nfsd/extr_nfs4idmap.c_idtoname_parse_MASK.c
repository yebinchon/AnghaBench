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
struct TYPE_2__ {scalar_t__ expiry_time; int /*<<< orphan*/  flags; } ;
struct ent {TYPE_1__ h; int /*<<< orphan*/  name; int /*<<< orphan*/  id; int /*<<< orphan*/  type; int /*<<< orphan*/  authname; } ;
struct cache_detail {int dummy; } ;
typedef  int /*<<< orphan*/  ent ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_NEGATIVE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IDMAP_NAMESZ ; 
 int /*<<< orphan*/  IDMAP_TYPE_GROUP ; 
 int /*<<< orphan*/  IDMAP_TYPE_USER ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char**) ; 
 int /*<<< orphan*/  idtoname_cache ; 
 struct ent* FUNC2 (struct ent*) ; 
 struct ent* FUNC3 (struct ent*,struct ent*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ent*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char**,int) ; 
 scalar_t__ FUNC11 (char*,char*) ; 

__attribute__((used)) static int
FUNC12(struct cache_detail *cd, char *buf, int buflen)
{
	struct ent ent, *res;
	char *buf1, *bp;
	int len;
	int error = -EINVAL;

	if (buf[buflen - 1] != '\n')
		return (-EINVAL);
	buf[buflen - 1]= '\0';

	buf1 = FUNC5(PAGE_SIZE, GFP_KERNEL);
	if (buf1 == NULL)
		return (-ENOMEM);

	FUNC7(&ent, 0, sizeof(ent));

	/* Authentication name */
	if (FUNC8(&buf, buf1, PAGE_SIZE) <= 0)
		goto out;
	FUNC6(ent.authname, buf1, sizeof(ent.authname));

	/* Type */
	if (FUNC8(&buf, buf1, PAGE_SIZE) <= 0)
		goto out;
	ent.type = FUNC11(buf1, "user") == 0 ?
		IDMAP_TYPE_USER : IDMAP_TYPE_GROUP;

	/* ID */
	if (FUNC8(&buf, buf1, PAGE_SIZE) <= 0)
		goto out;
	ent.id = FUNC10(buf1, &bp, 10);
	if (bp == buf1)
		goto out;

	/* expiry */
	ent.h.expiry_time = FUNC1(&buf);
	if (ent.h.expiry_time == 0)
		goto out;

	error = -ENOMEM;
	res = FUNC2(&ent);
	if (!res)
		goto out;

	/* Name */
	error = -EINVAL;
	len = FUNC8(&buf, buf1, PAGE_SIZE);
	if (len < 0)
		goto out;
	if (len == 0)
		FUNC9(CACHE_NEGATIVE, &ent.h.flags);
	else if (len >= IDMAP_NAMESZ)
		goto out;
	else
		FUNC6(ent.name, buf1, sizeof(ent.name));
	error = -ENOMEM;
	res = FUNC3(&ent, res);
	if (res == NULL)
		goto out;

	FUNC0(&res->h, &idtoname_cache);

	error = 0;
out:
	FUNC4(buf1);

	return error;
}