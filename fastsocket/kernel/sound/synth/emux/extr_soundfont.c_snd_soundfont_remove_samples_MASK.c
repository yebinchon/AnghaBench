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
struct TYPE_2__ {int /*<<< orphan*/  private_data; int /*<<< orphan*/  (* sample_reset ) (int /*<<< orphan*/ ) ;} ;
struct snd_sf_list {TYPE_1__ callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_sf_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sf_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sf_list*) ; 

int
FUNC4(struct snd_sf_list *sflist)
{
	FUNC0(sflist);
	if (sflist->callback.sample_reset)
		sflist->callback.sample_reset(sflist->callback.private_data);
	FUNC1(sflist);
	FUNC3(sflist);

	return 0;
}