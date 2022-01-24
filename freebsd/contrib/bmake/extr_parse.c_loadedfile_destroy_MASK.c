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
struct loadedfile {scalar_t__ maplen; struct loadedfile* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loadedfile*) ; 
 int /*<<< orphan*/  FUNC1 (struct loadedfile*,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct loadedfile *lf)
{
	if (lf->buf != NULL) {
		if (lf->maplen > 0) {
#ifdef HAVE_MMAP
			munmap(lf->buf, lf->maplen);
#endif
		} else {
			FUNC0(lf->buf);
		}
	}
	FUNC0(lf);
}