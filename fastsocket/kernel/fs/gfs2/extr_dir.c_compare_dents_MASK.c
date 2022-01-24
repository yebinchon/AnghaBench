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
typedef  scalar_t__ u32 ;
struct gfs2_dirent {int /*<<< orphan*/  de_name_len; int /*<<< orphan*/  de_hash; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gfs2_dirent const*,struct gfs2_dirent const*,unsigned int) ; 

__attribute__((used)) static int FUNC3(const void *a, const void *b)
{
	const struct gfs2_dirent *dent_a, *dent_b;
	u32 hash_a, hash_b;
	int ret = 0;

	dent_a = *(const struct gfs2_dirent **)a;
	hash_a = FUNC1(dent_a->de_hash);

	dent_b = *(const struct gfs2_dirent **)b;
	hash_b = FUNC1(dent_b->de_hash);

	if (hash_a > hash_b)
		ret = 1;
	else if (hash_a < hash_b)
		ret = -1;
	else {
		unsigned int len_a = FUNC0(dent_a->de_name_len);
		unsigned int len_b = FUNC0(dent_b->de_name_len);

		if (len_a > len_b)
			ret = 1;
		else if (len_a < len_b)
			ret = -1;
		else
			ret = FUNC2(dent_a + 1, dent_b + 1, len_a);
	}

	return ret;
}