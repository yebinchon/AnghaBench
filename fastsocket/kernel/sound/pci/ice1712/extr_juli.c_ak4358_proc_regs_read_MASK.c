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
struct snd_info_entry {scalar_t__ private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_ice1712 {int /*<<< orphan*/  akm; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,int,int) ; 

__attribute__((used)) static void FUNC2(struct snd_info_entry *entry,
		struct snd_info_buffer *buffer)
{
	struct snd_ice1712 *ice = (struct snd_ice1712 *)entry->private_data;
	int reg, val;
	for (reg = 0; reg <= 0xf; reg++) {
		val =  FUNC0(ice->akm, 0, reg);
		FUNC1(buffer, "0x%02x = 0x%02x\n", reg, val);
	}
}