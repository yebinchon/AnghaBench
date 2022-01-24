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
typedef  int uid_t ;
struct svc_rqst {int dummy; } ;
struct ent {int id; int type; int /*<<< orphan*/  h; int /*<<< orphan*/  name; int /*<<< orphan*/  authname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int IDMAP_NAMESZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct svc_rqst*,int /*<<< orphan*/ ,struct ent*,int /*<<< orphan*/ *,struct ent**) ; 
 int /*<<< orphan*/  idtoname_cache ; 
 int /*<<< orphan*/  idtoname_lookup ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*) ; 
 int FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct svc_rqst *rqstp, int type, uid_t id, char *name)
{
	struct ent *item, key = {
		.id = id,
		.type = type,
	};
	int ret;

	FUNC6(key.authname, FUNC4(rqstp), sizeof(key.authname));
	ret = FUNC2(rqstp, idtoname_lookup, &key, &idtoname_cache, &item);
	if (ret == -ENOENT)
		return FUNC5(name, "%u", id);
	if (ret)
		return ret;
	ret = FUNC7(item->name);
	FUNC0(ret > IDMAP_NAMESZ);
	FUNC3(name, item->name, ret);
	FUNC1(&item->h, &idtoname_cache);
	return ret;
}