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
struct snd_soc_jack {int /*<<< orphan*/  jack; int /*<<< orphan*/  pins; struct snd_soc_card* card; } ;
struct snd_soc_card {TYPE_1__* codec; } ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 

int FUNC2(struct snd_soc_card *card, const char *id, int type,
		     struct snd_soc_jack *jack)
{
	jack->card = card;
	FUNC0(&jack->pins);

	return FUNC1(card->codec->card, id, type, &jack->jack);
}