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
struct snd_cs4231 {unsigned char* image; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs4231*,unsigned char,unsigned char) ; 

__attribute__((used)) static void FUNC2(struct snd_cs4231 *chip, unsigned char reg,
			   unsigned char value)
{
	FUNC1(chip, reg, value);
	chip->image[reg] = value;
	FUNC0();
}