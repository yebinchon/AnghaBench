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
struct s2250 {int /*<<< orphan*/  audio; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct s2250* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s2250*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct s2250 *dec = FUNC0(client);

	FUNC1(client, NULL);
	FUNC2(dec->audio);
	FUNC3(dec);
	return 0;
}