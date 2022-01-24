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
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC2(void)
{
	u32 res;
	static u32 acqseq;
	static DEFINE_SPINLOCK(acqseq_lock);

	FUNC0(&acqseq_lock);
	res = (++acqseq ? : ++acqseq);
	FUNC1(&acqseq_lock);
	return res;
}