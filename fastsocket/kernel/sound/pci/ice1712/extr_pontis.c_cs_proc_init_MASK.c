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
struct snd_info_entry {int dummy; } ;
struct snd_ice1712 {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  cs_proc_regs_read ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct snd_info_entry**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_entry*,struct snd_ice1712*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct snd_ice1712 *ice)
{
	struct snd_info_entry *entry;
	if (! FUNC0(ice->card, "cs_codec", &entry))
		FUNC1(entry, ice, cs_proc_regs_read);
}