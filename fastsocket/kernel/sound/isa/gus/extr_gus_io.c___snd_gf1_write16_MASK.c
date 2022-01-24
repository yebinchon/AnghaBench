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
struct TYPE_2__ {int /*<<< orphan*/  reg_data16; int /*<<< orphan*/  reg_regsel; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct snd_gus_card * gus,
				     unsigned char reg, unsigned int data)
{
	FUNC1(reg, gus->gf1.reg_regsel);
	FUNC0();
	FUNC2((unsigned short) data, gus->gf1.reg_data16);
	FUNC0();
}