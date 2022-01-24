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
struct sec_path {int len; int /*<<< orphan*/  refcnt; int /*<<< orphan*/ * xvec; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct sec_path* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sec_path*,struct sec_path*,int) ; 
 int /*<<< orphan*/  secpath_cachep ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct sec_path *FUNC4(struct sec_path *src)
{
	struct sec_path *sp;

	sp = FUNC1(secpath_cachep, GFP_ATOMIC);
	if (!sp)
		return NULL;

	sp->len = 0;
	if (src) {
		int i;

		FUNC2(sp, src, sizeof(*sp));
		for (i = 0; i < sp->len; i++)
			FUNC3(sp->xvec[i]);
	}
	FUNC0(&sp->refcnt, 1);
	return sp;
}