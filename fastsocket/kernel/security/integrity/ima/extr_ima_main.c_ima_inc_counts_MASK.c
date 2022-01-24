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
struct ima_iint_cache {int /*<<< orphan*/  writecount; int /*<<< orphan*/  readcount; int /*<<< orphan*/  opencount; int /*<<< orphan*/  mutex; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ima_iint_cache *iint, fmode_t mode)
{
	FUNC0(!FUNC1(&iint->mutex));

	iint->opencount++;
	if ((mode & (FMODE_READ | FMODE_WRITE)) == FMODE_READ)
		iint->readcount++;
	if (mode & FMODE_WRITE)
		iint->writecount++;
}