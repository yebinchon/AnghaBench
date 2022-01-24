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
struct ent {TYPE_1__ h; int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  authname; } ;
struct cache_detail {int dummy; } ;
typedef  int /*<<< orphan*/  ent ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_NEGATIVE ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IDMAP_NAMESZ ; 
 int /*<<< orphan*/  IDMAP_TYPE_GROUP ; 
 int /*<<< orphan*/  IDMAP_TYPE_USER ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char**) ; 
 int FUNC2 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nametoid_cache ; 
 struct ent* FUNC7 (struct ent*) ; 
 struct ent* FUNC8 (struct ent*,struct ent*) ; 
 int FUNC9 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char*,char*) ; 

__attribute__((used)) static int
FUNC12(struct cache_detail *cd, char *buf, int buflen)
{
	struct ent ent, *res;
	char *buf1;
	int error = -EINVAL;

	if (buf[buflen - 1] != '\n')
		return (-EINVAL);
	buf[buflen - 1]= '\0';

	buf1 = FUNC4(PAGE_SIZE, GFP_KERNEL);
	if (buf1 == NULL)
		return (-ENOMEM);

	FUNC6(&ent, 0, sizeof(ent));

	/* Authentication name */
	if (FUNC9(&buf, buf1, PAGE_SIZE) <= 0)
		goto out;
	FUNC5(ent.authname, buf1, sizeof(ent.authname));

	/* Type */
	if (FUNC9(&buf, buf1, PAGE_SIZE) <= 0)
		goto out;
	ent.type = FUNC11(buf1, "user") == 0 ?
		IDMAP_TYPE_USER : IDMAP_TYPE_GROUP;

	/* Name */
	error = FUNC9(&buf, buf1, PAGE_SIZE);
	if (error <= 0 || error >= IDMAP_NAMESZ)
		goto out;
	FUNC5(ent.name, buf1, sizeof(ent.name));

	/* expiry */
	ent.h.expiry_time = FUNC1(&buf);
	if (ent.h.expiry_time == 0)
		goto out;

	/* ID */
	error = FUNC2(&buf, &ent.id);
	if (error == -EINVAL)
		goto out;
	if (error == -ENOENT)
		FUNC10(CACHE_NEGATIVE, &ent.h.flags);

	error = -ENOMEM;
	res = FUNC7(&ent);
	if (res == NULL)
		goto out;
	res = FUNC8(&ent, res);
	if (res == NULL)
		goto out;

	FUNC0(&res->h, &nametoid_cache);
	error = 0;
out:
	FUNC3(buf1);

	return (error);
}