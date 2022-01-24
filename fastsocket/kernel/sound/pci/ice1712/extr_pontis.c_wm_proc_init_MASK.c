#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  write; } ;
struct TYPE_4__ {TYPE_1__ text; } ;
struct snd_info_entry {TYPE_2__ c; int /*<<< orphan*/  mode; } ;
struct snd_ice1712 {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct snd_info_entry**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_entry*,struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm_proc_regs_read ; 
 int /*<<< orphan*/  wm_proc_regs_write ; 

__attribute__((used)) static void FUNC2(struct snd_ice1712 *ice)
{
	struct snd_info_entry *entry;
	if (! FUNC0(ice->card, "wm_codec", &entry)) {
		FUNC1(entry, ice, wm_proc_regs_read);
		entry->mode |= S_IWUSR;
		entry->c.text.write = wm_proc_regs_write;
	}
}