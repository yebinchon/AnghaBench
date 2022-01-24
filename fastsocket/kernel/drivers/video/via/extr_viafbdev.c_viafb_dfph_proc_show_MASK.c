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
typedef  int u8 ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR97 ; 
 int /*<<< orphan*/  VIACR ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	u8 dfp_high = 0;
	dfp_high = FUNC1(VIACR, CR97) & 0x0f;
	FUNC0(m, "%x\n", dfp_high);
	return 0;
}