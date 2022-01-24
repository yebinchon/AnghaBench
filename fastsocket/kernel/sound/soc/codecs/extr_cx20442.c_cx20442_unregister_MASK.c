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
struct cx20442_priv {int /*<<< orphan*/  codec; } ;

/* Variables and functions */
 int /*<<< orphan*/ * cx20442_codec ; 
 int /*<<< orphan*/  cx20442_dai ; 
 int /*<<< orphan*/  FUNC0 (struct cx20442_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cx20442_priv *cx20442)
{
	FUNC2(&cx20442_dai);
	FUNC1(&cx20442->codec);

	cx20442_codec = NULL;
	FUNC0(cx20442);
}