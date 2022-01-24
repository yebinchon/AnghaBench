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
struct nfs4_file {int /*<<< orphan*/ * fi_access; } ;

/* Variables and functions */
 int O_RDWR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_file*,int) ; 

__attribute__((used)) static void FUNC3(struct nfs4_file *fp, int oflag)
{
	if (FUNC0(&fp->fi_access[oflag])) {
		FUNC2(fp, oflag);
		if (FUNC1(&fp->fi_access[1 - oflag]) == 0)
			FUNC2(fp, O_RDWR);
	}
}