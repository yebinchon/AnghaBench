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
struct idmap_hashtable {int dummy; } ;
struct idmap_hashent {scalar_t__ ih_id; scalar_t__ ih_namelen; int /*<<< orphan*/  ih_expires; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 struct idmap_hashent* FUNC0 (struct idmap_hashtable*,scalar_t__) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct idmap_hashent *
FUNC2(struct idmap_hashtable *h, __u32 id)
{
	struct idmap_hashent *he = FUNC0(h, id);

	if (he == NULL)
		return NULL;
	if (he->ih_id != id || he->ih_namelen == 0)
		return NULL;
	if (FUNC1(jiffies, he->ih_expires))
		return NULL;
	return he;
}