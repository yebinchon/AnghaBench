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
struct svc_export {int /*<<< orphan*/  h; struct path ex_path; int /*<<< orphan*/ * ex_client; } ;
typedef  struct svc_export svc_export ;
typedef  int /*<<< orphan*/  svc_client ;
struct cache_req {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct svc_export* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cache_req*) ; 
 int /*<<< orphan*/  svc_export_cache ; 
 struct svc_export* FUNC2 (struct svc_export*) ; 

__attribute__((used)) static svc_export *FUNC3(svc_client *clp, const struct path *path,
				     struct cache_req *reqp)
{
	struct svc_export *exp, key;
	int err;

	if (!clp)
		return FUNC0(-ENOENT);

	key.ex_client = clp;
	key.ex_path = *path;

	exp = FUNC2(&key);
	if (exp == NULL)
		return FUNC0(-ENOMEM);
	err = FUNC1(&svc_export_cache, &exp->h, reqp);
	if (err)
		return FUNC0(err);
	return exp;
}