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
typedef  size_t u32 ;
struct pneigh_entry {struct pneigh_entry* next; struct net_device* dev; int /*<<< orphan*/  key; int /*<<< orphan*/  net; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct neigh_table {int key_len; int /*<<< orphan*/  lock; struct pneigh_entry** phash_buckets; scalar_t__ (* pconstructor ) (struct pneigh_entry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pneigh_entry* FUNC1 (struct pneigh_entry*,struct net*,void const*,int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct pneigh_entry*) ; 
 struct pneigh_entry* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void const*,int) ; 
 size_t FUNC8 (void const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net*) ; 
 scalar_t__ FUNC12 (struct pneigh_entry*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

struct pneigh_entry * FUNC16(struct neigh_table *tbl,
				    struct net *net, const void *pkey,
				    struct net_device *dev, int creat)
{
	struct pneigh_entry *n;
	int key_len = tbl->key_len;
	u32 hash_val = FUNC8(pkey, key_len);

	FUNC9(&tbl->lock);
	n = FUNC1(tbl->phash_buckets[hash_val],
			      net, pkey, key_len, dev);
	FUNC10(&tbl->lock);

	if (n || !creat)
		goto out;

	FUNC0();

	n = FUNC6(sizeof(*n) + key_len, GFP_KERNEL);
	if (!n)
		goto out;

	FUNC14(&n->net, FUNC4(net));
	FUNC7(n->key, pkey, key_len);
	n->dev = dev;
	if (dev)
		FUNC2(dev);

	if (tbl->pconstructor && tbl->pconstructor(n)) {
		if (dev)
			FUNC3(dev);
		FUNC11(net);
		FUNC5(n);
		n = NULL;
		goto out;
	}

	FUNC13(&tbl->lock);
	n->next = tbl->phash_buckets[hash_val];
	tbl->phash_buckets[hash_val] = n;
	FUNC15(&tbl->lock);
out:
	return n;
}