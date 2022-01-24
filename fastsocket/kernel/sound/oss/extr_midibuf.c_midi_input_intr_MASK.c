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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * input_sleeper ; 
 int /*<<< orphan*/ ** midi_in_buf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(int dev, unsigned char data)
{
	if (midi_in_buf[dev] == NULL)
		return;

	if (data == 0xfe)	/*
				 * Active sensing
				 */
		return;		/*
				 * Ignore
				 */

	if (FUNC1(midi_in_buf[dev])) {
		FUNC0(midi_in_buf[dev], data);
		FUNC2(&input_sleeper[dev]);
	}
}