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
struct upstream_user_struct {int dummy; } ;
struct cx25821_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_UPSTREAM_SRAM_CHANNEL_B ; 
 int /*<<< orphan*/  FUNC0 (struct cx25821_dev*,int /*<<< orphan*/ ) ; 

void FUNC1(struct cx25821_dev *dev,
				  struct upstream_user_struct *up_data)
{
	FUNC0(dev, AUDIO_UPSTREAM_SRAM_CHANNEL_B);
}