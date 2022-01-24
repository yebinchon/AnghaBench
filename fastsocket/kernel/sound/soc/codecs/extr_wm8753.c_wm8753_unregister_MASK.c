#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  delayed_work; } ;
struct wm8753_priv {TYPE_1__ codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct wm8753_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * wm8753_codec ; 
 int /*<<< orphan*/ * wm8753_dai ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct wm8753_priv *wm8753)
{
	FUNC5(&wm8753->codec, SND_SOC_BIAS_OFF);
	FUNC2(&wm8753->codec.delayed_work);
	FUNC4(&wm8753_dai[0], FUNC0(wm8753_dai));
	FUNC3(&wm8753->codec);
	FUNC1(wm8753);
	wm8753_codec = NULL;
}