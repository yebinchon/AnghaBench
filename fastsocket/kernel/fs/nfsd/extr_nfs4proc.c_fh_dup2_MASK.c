#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct svc_fh {TYPE_1__* fh_export; int /*<<< orphan*/  fh_dentry; } ;
struct TYPE_2__ {int /*<<< orphan*/  h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_fh*) ; 

__attribute__((used)) static inline void
FUNC3(struct svc_fh *dst, struct svc_fh *src)
{
	FUNC2(dst);
	FUNC1(src->fh_dentry);
	if (src->fh_export)
		FUNC0(&src->fh_export->h);
	*dst = *src;
}