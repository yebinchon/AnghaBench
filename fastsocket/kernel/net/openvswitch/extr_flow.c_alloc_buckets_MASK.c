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
struct hlist_head {int dummy; } ;
struct flex_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hlist_head*) ; 
 struct flex_array* FUNC1 (int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct flex_array*) ; 
 scalar_t__ FUNC3 (struct flex_array*,int) ; 
 int FUNC4 (struct flex_array*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct flex_array *FUNC5(unsigned int n_buckets)
{
	struct flex_array *buckets;
	int i, err;

	buckets = FUNC1(sizeof(struct hlist_head),
				   n_buckets, GFP_KERNEL);
	if (!buckets)
		return NULL;

	err = FUNC4(buckets, 0, n_buckets, GFP_KERNEL);
	if (err) {
		FUNC2(buckets);
		return NULL;
	}

	for (i = 0; i < n_buckets; i++)
		FUNC0((struct hlist_head *)
					FUNC3(buckets, i));

	return buckets;
}