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
struct snd_soc_card {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  list; scalar_t__ instantiated; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  card_list ; 
 int /*<<< orphan*/  client_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct snd_soc_card *card)
{
	if (!card->name || !card->dev)
		return -EINVAL;

	FUNC0(&card->list);
	card->instantiated = 0;

	FUNC3(&client_mutex);
	FUNC2(&card->list, &card_list);
	FUNC5();
	FUNC4(&client_mutex);

	FUNC1(card->dev, "Registered card '%s'\n", card->name);

	return 0;
}