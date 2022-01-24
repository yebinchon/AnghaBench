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
struct TYPE_2__ {int /*<<< orphan*/  node; } ;
struct onyx {struct onyx* codec_info; TYPE_1__ codec; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct onyx* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct onyx*) ; 
 int /*<<< orphan*/  FUNC3 (struct onyx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct onyx *onyx = FUNC1(client);

	FUNC0(&onyx->codec);
	FUNC4(onyx->codec.node);
	if (onyx->codec_info)
		FUNC3(onyx->codec_info);
	FUNC2(client, onyx);
	FUNC3(onyx);
	return 0;
}