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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint64_t ;
typedef  enum radix_style { ____Placeholder_radix_style } radix_style ;

/* Variables and functions */
 int BUF_SIZE ; 
 int RADIX_DECIMAL ; 
 int RADIX_OCTAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void
FUNC2(uint64_t num, enum radix_style rad, int col)
{
	char buf[BUF_SIZE];

	(void) FUNC0(buf, BUF_SIZE, (rad == RADIX_DECIMAL ? "%ju" :
	    ((rad == RADIX_OCTAL) ? "0%jo" : "0x%jx")), (uintmax_t) num);
	FUNC1(buf, col);
}