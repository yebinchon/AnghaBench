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
struct snd_info_buffer {int dummy; } ;
struct oxygen {struct generic_data* model_data; } ;
struct generic_data {int /*<<< orphan*/ * wm8785_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct oxygen *chip,
				  struct snd_info_buffer *buffer)
{
	struct generic_data *data = chip->model_data;
	unsigned int i;

	FUNC0(buffer, "\nWM8785:");
	for (i = 0; i < 3; ++i)
		FUNC0(buffer, " %03x", data->wm8785_regs[i]);
	FUNC0(buffer, "\n");
}