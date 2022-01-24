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
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODATA ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int
FUNC3(struct inode *inode, pgoff_t pgoff, int create,
		   sector_t *result)
{
	struct buffer_head tmp;
	int rc;

	FUNC2(&tmp, 0, sizeof(struct buffer_head));
	rc = FUNC1(inode, pgoff, &tmp, create);
	*result = tmp.b_blocknr;

	/* did we get a sparse block (hole in the file)? */
	if (!tmp.b_blocknr && !rc) {
		FUNC0(create);
		rc = -ENODATA;
	}

	return rc;
}