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
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
typedef  int secno ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct quad_buffer_head*) ; 
 unsigned int* FUNC1 (struct super_block*,int,struct quad_buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 

__attribute__((used)) static int FUNC5(struct super_block *s, secno sec)
{
	struct quad_buffer_head qbh;
	unsigned *bmp;
	FUNC3(s);
	if (!(bmp = FUNC1(s, sec >> 14, &qbh, "aip"))) goto end;
	if (bmp[(sec & 0x3fff) >> 5] & (1 << (sec & 0x1f))) {
		bmp[(sec & 0x3fff) >> 5] &= ~(1 << (sec & 0x1f));
		FUNC2(&qbh);
		FUNC0(&qbh);
		FUNC4(s);
		return 1;
	}
	FUNC0(&qbh);
	end:
	FUNC4(s);
	return 0;
}