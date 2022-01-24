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
typedef  int uint32_t ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int dummy; } ;
struct extent_position {scalar_t__ bh; } ;
typedef  int int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int) ; 
 int FUNC3 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int) ; 

__attribute__((used)) static int8_t FUNC5(struct inode *inode, struct extent_position epos,
			      struct kernel_lb_addr neloc, uint32_t nelen)
{
	struct kernel_lb_addr oeloc;
	uint32_t oelen;
	int8_t etype;

	if (epos.bh)
		FUNC1(epos.bh);

	while ((etype = FUNC3(inode, &epos, &oeloc, &oelen, 0)) != -1) {
		FUNC4(inode, &epos, &neloc, nelen, 1);
		neloc = oeloc;
		nelen = (etype << 30) | oelen;
	}
	FUNC2(inode, &epos, &neloc, nelen, 1);
	FUNC0(epos.bh);

	return (nelen >> 30);
}