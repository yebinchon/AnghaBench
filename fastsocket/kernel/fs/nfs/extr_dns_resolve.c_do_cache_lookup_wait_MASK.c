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
struct nfs_dns_ent {int dummy; } ;
struct nfs_cache_defer_req {int dummy; } ;
struct cache_detail {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int FUNC0 (struct cache_detail*,struct nfs_dns_ent*,struct nfs_dns_ent**,struct nfs_cache_defer_req*) ; 
 int FUNC1 (struct cache_detail*,struct nfs_dns_ent*,struct nfs_dns_ent**) ; 
 struct nfs_cache_defer_req* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_cache_defer_req*) ; 
 int FUNC4 (struct nfs_cache_defer_req*) ; 

__attribute__((used)) static int FUNC5(struct cache_detail *cd,
		struct nfs_dns_ent *key,
		struct nfs_dns_ent **item)
{
	struct nfs_cache_defer_req *dreq;
	int ret = -ENOMEM;

	dreq = FUNC2();
	if (!dreq)
		goto out;
	ret = FUNC0(cd, key, item, dreq);
	if (ret == -EAGAIN) {
		ret = FUNC4(dreq);
		if (!ret)
			ret = FUNC1(cd, key, item);
	}
	FUNC3(dreq);
out:
	return ret;
}