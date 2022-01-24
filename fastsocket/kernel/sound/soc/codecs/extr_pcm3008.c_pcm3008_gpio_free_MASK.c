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
struct pcm3008_setup_data {int /*<<< orphan*/  pdda_pin; int /*<<< orphan*/  pdad_pin; int /*<<< orphan*/  dem1_pin; int /*<<< orphan*/  dem0_pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct pcm3008_setup_data *setup)
{
	FUNC0(setup->dem0_pin);
	FUNC0(setup->dem1_pin);
	FUNC0(setup->pdad_pin);
	FUNC0(setup->pdda_pin);
}