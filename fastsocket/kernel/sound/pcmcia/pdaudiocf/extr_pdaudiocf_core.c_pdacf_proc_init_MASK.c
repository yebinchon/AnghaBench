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
struct snd_pdacf {int /*<<< orphan*/  card; } ;
struct snd_info_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  pdacf_proc_read ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct snd_info_entry**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_entry*,struct snd_pdacf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct snd_pdacf *chip)
{
	struct snd_info_entry *entry;

	if (! FUNC0(chip->card, "pdaudiocf", &entry))
		FUNC1(entry, chip, pdacf_proc_read);
}