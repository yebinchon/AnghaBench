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
struct metapage {int /*<<< orphan*/  wait; scalar_t__ flag; int /*<<< orphan*/ * log; scalar_t__ clsn; int /*<<< orphan*/ * data; scalar_t__ lsn; scalar_t__ lid; } ;

/* Variables and functions */
 int /*<<< orphan*/  META_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC2(void *foo)
{
	struct metapage *mp = (struct metapage *)foo;

	mp->lid = 0;
	mp->lsn = 0;
	mp->flag = 0;
	mp->data = NULL;
	mp->clsn = 0;
	mp->log = NULL;
	FUNC1(META_free, &mp->flag);
	FUNC0(&mp->wait);
}