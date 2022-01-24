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
typedef  int /*<<< orphan*/  u8 ;
struct snd_opl4 {scalar_t__ pcm_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_opl4*) ; 

void FUNC2(struct snd_opl4 *opl4, u8 reg, u8 value)
{
	FUNC1(opl4);
	FUNC0(reg, opl4->pcm_port);

	FUNC1(opl4);
	FUNC0(value, opl4->pcm_port + 1);
}