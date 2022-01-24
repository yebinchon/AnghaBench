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
struct snd_ice1712 {int /*<<< orphan*/  vt1720; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_DATA ; 
 int /*<<< orphan*/  GPIO_DATA_22 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(struct snd_ice1712 *ice)
{
	unsigned int data;
	if (!ice->vt1720)
		data = (unsigned int)FUNC1(FUNC0(ice, GPIO_DATA_22));
	else
		data = 0;
	data = (data << 16) | FUNC2(FUNC0(ice, GPIO_DATA));
	return data;
}