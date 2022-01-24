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
struct s6000_i2s_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  S6_I2S_DISABLE_IF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct s6000_i2s_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct s6000_i2s_dev *dev, int channel)
{
	FUNC1(dev, FUNC0(channel), S6_I2S_DISABLE_IF);
}