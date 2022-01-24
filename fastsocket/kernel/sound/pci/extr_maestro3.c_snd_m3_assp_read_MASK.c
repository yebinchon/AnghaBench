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
typedef  int u16 ;
struct snd_m3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_PORT_MEMORY_DATA ; 
 int /*<<< orphan*/  DSP_PORT_MEMORY_INDEX ; 
 int /*<<< orphan*/  DSP_PORT_MEMORY_TYPE ; 
 int MEMTYPE_MASK ; 
 int FUNC0 (struct snd_m3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_m3*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC2(struct snd_m3 *chip, u16 region, u16 index)
{
	FUNC1(chip, region & MEMTYPE_MASK, DSP_PORT_MEMORY_TYPE);
	FUNC1(chip, index, DSP_PORT_MEMORY_INDEX);
	return FUNC0(chip, DSP_PORT_MEMORY_DATA);
}