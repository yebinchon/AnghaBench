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
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_ice1712 *ice)
{
	/* assert PRST# to converters; MT05 bit 7 */
	FUNC3(FUNC1(FUNC0(ice, AC97_CMD)) | 0x80, FUNC0(ice, AC97_CMD));
	FUNC2(5);
	/* deassert PRST# */
	FUNC3(FUNC1(FUNC0(ice, AC97_CMD)) & ~0x80, FUNC0(ice, AC97_CMD));
}