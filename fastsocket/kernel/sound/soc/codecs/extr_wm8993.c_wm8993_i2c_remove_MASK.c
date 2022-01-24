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
struct wm8993_priv {int /*<<< orphan*/  codec; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 struct wm8993_priv* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct wm8993_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wm8993_dai ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct wm8993_priv *wm8993 = FUNC0(client);

	FUNC2(&wm8993->codec);
	FUNC3(&wm8993_dai);

	FUNC4(&wm8993->codec, SND_SOC_BIAS_OFF);
	FUNC1(wm8993);

	return 0;
}