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
struct snd_soc_dai {int /*<<< orphan*/  name; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  client_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void FUNC4(struct snd_soc_dai *dai)
{
	FUNC1(&client_mutex);
	FUNC0(&dai->list);
	FUNC2(&client_mutex);

	FUNC3("Unregistered DAI '%s'\n", dai->name);
}