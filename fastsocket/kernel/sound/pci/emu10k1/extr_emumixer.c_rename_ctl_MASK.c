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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct snd_kcontrol* FUNC0 (struct snd_card*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC2(struct snd_card *card, const char *src, const char *dst)
{
	struct snd_kcontrol *kctl = FUNC0(card, src);
	if (kctl) {
		FUNC1(kctl->id.name, dst);
		return 0;
	}
	return -ENOENT;
}