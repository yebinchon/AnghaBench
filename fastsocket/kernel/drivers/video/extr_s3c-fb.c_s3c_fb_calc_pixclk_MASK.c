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
struct s3c_fb {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus_clk; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned long,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct s3c_fb *sfb, unsigned int pixclk)
{
	unsigned long clk = FUNC0(sfb->bus_clk);
	unsigned long long tmp;
	unsigned int result;

	tmp = (unsigned long long)clk;
	tmp *= pixclk;

	FUNC2(tmp, 1000000000UL);
	result = (unsigned int)tmp / 1000;

	FUNC1(sfb->dev, "pixclk=%u, clk=%lu, div=%d (%lu)\n",
		pixclk, clk, result, clk / result);

	return result;
}