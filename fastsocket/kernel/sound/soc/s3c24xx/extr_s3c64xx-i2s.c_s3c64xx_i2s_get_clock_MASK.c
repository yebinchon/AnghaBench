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
struct snd_soc_dai {int dummy; } ;
struct s3c_i2sv2_info {struct clk* iis_cclk; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 struct s3c_i2sv2_info* FUNC0 (struct snd_soc_dai*) ; 

struct clk *FUNC1(struct snd_soc_dai *dai)
{
	struct s3c_i2sv2_info *i2s = FUNC0(dai);

	return i2s->iis_cclk;
}