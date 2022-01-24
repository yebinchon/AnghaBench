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
struct max1363_state {int configbyte; int /*<<< orphan*/  setupbyte; int /*<<< orphan*/  client; TYPE_1__* current_mode; } ;
struct TYPE_2__ {int conf; } ;

/* Variables and functions */
 int MAX1363_CHANNEL_SEL_MASK ; 
 int MAX1363_SCAN_MASK ; 
 int MAX1363_SE_DE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct max1363_state *st)
{
	st->configbyte &= ~(MAX1363_CHANNEL_SEL_MASK
			    | MAX1363_SCAN_MASK
			    | MAX1363_SE_DE_MASK);
	st->configbyte |= st->current_mode->conf;

	return FUNC0(st->client,
					  st->setupbyte,
					  st->configbyte);
}