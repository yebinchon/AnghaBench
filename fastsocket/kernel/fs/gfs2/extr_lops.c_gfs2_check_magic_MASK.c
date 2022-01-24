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
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_MAGIC ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC6(struct buffer_head *bh)
{
	void *kaddr;
	__be32 *ptr;

	FUNC1(bh);
	kaddr = FUNC3(bh->b_page, KM_USER0);
	ptr = kaddr + FUNC0(bh);
	if (*ptr == FUNC2(GFS2_MAGIC))
		FUNC5(bh);
	FUNC4(kaddr, KM_USER0);
}