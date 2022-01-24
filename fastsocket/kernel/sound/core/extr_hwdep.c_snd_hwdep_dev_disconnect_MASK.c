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
struct snd_hwdep {int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  list; int /*<<< orphan*/  device; int /*<<< orphan*/  card; int /*<<< orphan*/  oss_type; scalar_t__ ossreg; int /*<<< orphan*/  open_wait; } ;
struct snd_device {struct snd_hwdep* device_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  SNDRV_DEVICE_TYPE_HWDEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  register_mutex ; 
 scalar_t__ FUNC3 (int) ; 
 struct snd_hwdep* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_device *device)
{
	struct snd_hwdep *hwdep = device->device_data;

	if (FUNC3(!hwdep))
		return -ENXIO;
	FUNC1(&register_mutex);
	if (FUNC4(hwdep->card, hwdep->device) != hwdep) {
		FUNC2(&register_mutex);
		return -EINVAL;
	}
	FUNC1(&hwdep->open_mutex);
	FUNC7(&hwdep->open_wait);
#ifdef CONFIG_SND_OSSEMUL
	if (hwdep->ossreg)
		snd_unregister_oss_device(hwdep->oss_type, hwdep->card, hwdep->device);
#endif
	FUNC5(SNDRV_DEVICE_TYPE_HWDEP, hwdep->card, hwdep->device);
	FUNC0(&hwdep->list);
	FUNC2(&hwdep->open_mutex);
	FUNC2(&register_mutex);
	return 0;
}