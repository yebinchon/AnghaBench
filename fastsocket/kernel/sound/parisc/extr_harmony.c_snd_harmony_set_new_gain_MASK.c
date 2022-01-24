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
struct TYPE_2__ {int /*<<< orphan*/  gain; } ;
struct snd_harmony {TYPE_1__ st; } ;

/* Variables and functions */
 int /*<<< orphan*/  HARMONY_GAINCTL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_harmony*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_harmony*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC2(struct snd_harmony *h)
{
 	FUNC0(h);
	FUNC1(h, HARMONY_GAINCTL, h->st.gain);
}