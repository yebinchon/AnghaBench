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
struct wm8988_priv {int /*<<< orphan*/  codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct wm8988_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * wm8988_codec ; 
 int /*<<< orphan*/  wm8988_dai ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wm8988_priv *wm8988)
{
	FUNC3(&wm8988->codec, SND_SOC_BIAS_OFF);
	FUNC2(&wm8988_dai);
	FUNC1(&wm8988->codec);
	FUNC0(wm8988);
	wm8988_codec = NULL;
}