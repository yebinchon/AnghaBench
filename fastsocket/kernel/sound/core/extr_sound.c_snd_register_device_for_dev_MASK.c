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
struct snd_minor {int type; int card; int device; int /*<<< orphan*/  dev; void* private_data; struct file_operations const* f_ops; } ;
struct snd_card {int number; } ;
struct file_operations {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,void*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_minor*) ; 
 struct snd_minor* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  major ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 () ; 
 int FUNC10 (int,struct snd_card*,int) ; 
 struct snd_minor** snd_minors ; 
 int /*<<< orphan*/  sound_class ; 
 int /*<<< orphan*/  sound_mutex ; 

int FUNC11(int type, struct snd_card *card, int dev,
				const struct file_operations *f_ops,
				void *private_data,
				const char *name, struct device *device)
{
	int minor;
	struct snd_minor *preg;

	if (FUNC8(!name))
		return -EINVAL;
	preg = FUNC5(sizeof *preg, GFP_KERNEL);
	if (preg == NULL)
		return -ENOMEM;
	preg->type = type;
	preg->card = card ? card->number : -1;
	preg->device = dev;
	preg->f_ops = f_ops;
	preg->private_data = private_data;
	FUNC6(&sound_mutex);
#ifdef CONFIG_SND_DYNAMIC_MINORS
	minor = snd_find_free_minor();
#else
	minor = FUNC10(type, card, dev);
	if (minor >= 0 && snd_minors[minor])
		minor = -EBUSY;
#endif
	if (minor < 0) {
		FUNC7(&sound_mutex);
		FUNC4(preg);
		return minor;
	}
	snd_minors[minor] = preg;
	preg->dev = FUNC3(sound_class, device, FUNC1(major, minor),
				  private_data, "%s", name);
	if (FUNC0(preg->dev)) {
		snd_minors[minor] = NULL;
		FUNC7(&sound_mutex);
		minor = FUNC2(preg->dev);
		FUNC4(preg);
		return minor;
	}

	FUNC7(&sound_mutex);
	return 0;
}