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
 int /*<<< orphan*/  CR9B ; 
 int /*<<< orphan*/  SR65 ; 
 int /*<<< orphan*/  VIACR ; 
 int /*<<< orphan*/  VIASR ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	u8 dvp1 = 0, dvp1_data_dri = 0, dvp1_clk_dri = 0;
	dvp1 = FUNC1(VIACR, CR9B) & 0x0f;
	dvp1_data_dri = (FUNC1(VIASR, SR65) & 0x0c) >> 2;
	dvp1_clk_dri = FUNC1(VIASR, SR65) & 0x03;
	FUNC0(m, "%x %x %x\n", dvp1, dvp1_data_dri, dvp1_clk_dri);
	return 0;
}