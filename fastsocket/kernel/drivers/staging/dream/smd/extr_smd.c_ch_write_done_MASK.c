#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct smd_channel {TYPE_1__* send; } ;
struct TYPE_2__ {unsigned int head; int fHEAD; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SMD_BUF_SIZE ; 
 unsigned int FUNC1 (struct smd_channel*) ; 

__attribute__((used)) static void FUNC2(struct smd_channel *ch, unsigned count)
{
	FUNC0(count > FUNC1(ch));
	ch->send->head = (ch->send->head + count) & (SMD_BUF_SIZE - 1);
	ch->send->fHEAD = 1;
}