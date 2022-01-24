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
struct go7007_snd {int /*<<< orphan*/  card; } ;
struct go7007 {struct go7007_snd* snd_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct go7007 *go)
{
	struct go7007_snd *gosnd = go->snd_context;

	FUNC0(gosnd->card);
	FUNC1(gosnd->card);
	return 0;
}