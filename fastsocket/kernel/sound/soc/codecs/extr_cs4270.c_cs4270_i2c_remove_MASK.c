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
struct i2c_client {int dummy; } ;
struct cs4270_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/ * cs4270_codec ; 
 TYPE_1__ cs4270_dai ; 
 struct cs4270_private* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4270_private*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *i2c_client)
{
	struct cs4270_private *cs4270 = FUNC0(i2c_client);

	FUNC1(cs4270);
	cs4270_codec = NULL;
	cs4270_dai.dev = NULL;

	return 0;
}