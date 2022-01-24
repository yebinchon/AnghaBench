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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct nm256 {scalar_t__* coeff_buf; } ;

/* Variables and functions */
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__* coefficient_sizes ; 
 scalar_t__ coefficients ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nm256*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nm256*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct nm256 *chip, int stream, u32 port, int which)
{
	u32 coeff_buf = chip->coeff_buf[stream];
	u16 offset = FUNC0(which);
	u16 size = coefficient_sizes[which];

	FUNC1(chip, coefficients + offset, coeff_buf, size);
	FUNC2(chip, port, coeff_buf);
	/* ???  Record seems to behave differently than playback.  */
	if (stream == SNDRV_PCM_STREAM_PLAYBACK)
		size--;
	FUNC2(chip, port + 4, coeff_buf + size);
}