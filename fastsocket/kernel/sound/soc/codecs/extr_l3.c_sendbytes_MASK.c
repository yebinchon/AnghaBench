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
struct l3_pins {int /*<<< orphan*/  mode_setup; int /*<<< orphan*/  (* setmode ) (int) ;int /*<<< orphan*/  mode; int /*<<< orphan*/  mode_hold; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l3_pins*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct l3_pins *adap, const u8 *buf,
		      int len)
{
	int i;

	for (i = 0; i < len; i++) {
		if (i) {
			FUNC3(adap->mode_hold);
			adap->setmode(0);
			FUNC3(adap->mode);
		}
		adap->setmode(1);
		FUNC3(adap->mode_setup);
		FUNC0(adap, buf[i]);
	}
}