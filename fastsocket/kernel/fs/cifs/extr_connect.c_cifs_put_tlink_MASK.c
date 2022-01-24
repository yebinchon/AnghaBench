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
struct tcon_link {int /*<<< orphan*/  tl_time; int /*<<< orphan*/  tl_flags; int /*<<< orphan*/  tl_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcon_link*) ; 
 int /*<<< orphan*/  TCON_LINK_IN_TREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcon_link*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct tcon_link*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tcon_link* FUNC5 (struct tcon_link*) ; 

void
FUNC6(struct tcon_link *tlink)
{
	if (!tlink || FUNC0(tlink))
		return;

	if (!FUNC1(&tlink->tl_count) ||
	    FUNC4(TCON_LINK_IN_TREE, &tlink->tl_flags)) {
		tlink->tl_time = jiffies;
		return;
	}

	if (!FUNC0(FUNC5(tlink)))
		FUNC2(FUNC5(tlink));
	FUNC3(tlink);
	return;
}