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
struct snd_card_cs4236 {int /*<<< orphan*/  res_sb_port; } ;
struct snd_card {struct snd_card_cs4236* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct snd_card *card)
{
	struct snd_card_cs4236 *acard = card->private_data;

	FUNC0(acard->res_sb_port);
}