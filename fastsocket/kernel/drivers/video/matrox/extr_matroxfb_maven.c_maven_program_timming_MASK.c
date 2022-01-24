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
struct mavenregs {scalar_t__ mode; } ;
struct maven_data {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ MATROXFB_OUTPUT_MODE_MONITOR ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct mavenregs const*) ; 

__attribute__((used)) static int FUNC3(struct maven_data* md,
		const struct mavenregs* m) {
	struct i2c_client *c = md->client;

	if (m->mode == MATROXFB_OUTPUT_MODE_MONITOR) {
		FUNC0(0x80);
		FUNC0(0x81);
		FUNC0(0x82);

		FUNC0(0xB3);
		FUNC0(0x94);

		FUNC1(0x96);
		FUNC1(0x98);
		FUNC1(0x9A);
		FUNC1(0x9C);
		FUNC1(0x9E);
		FUNC1(0xA0);
		FUNC1(0xA2);
		FUNC1(0xA4);
		FUNC1(0xA6);
		FUNC1(0xA8);
		FUNC1(0xAA);
		FUNC1(0xAC);
		FUNC1(0xAE);

		FUNC0(0xB0);	/* output: monitor */
		FUNC0(0xB1);	/* ??? */
		FUNC0(0x8C);	/* must be set... */
		FUNC0(0x8D);	/* defaults to 0x10: test signal */
		FUNC0(0xB9);	/* defaults to 0x2C: too bright */
		FUNC0(0xBF);	/* makes picture stable */
	} else {
		FUNC2(c, m);
	}
	return 0;
}