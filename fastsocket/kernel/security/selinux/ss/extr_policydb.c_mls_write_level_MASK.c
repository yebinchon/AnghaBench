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
typedef  int /*<<< orphan*/  u32 ;
struct mls_level {int /*<<< orphan*/  cat; int /*<<< orphan*/  sens; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,void*) ; 

__attribute__((used)) static int FUNC3(struct mls_level *l, void *fp)
{
	__le32 buf[1];
	int rc;

	buf[0] = FUNC0(l->sens);
	rc = FUNC2(buf, sizeof(u32), 1, fp);
	if (rc)
		return rc;

	rc = FUNC1(&l->cat, fp);
	if (rc)
		return rc;

	return 0;
}