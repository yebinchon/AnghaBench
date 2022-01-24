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
struct hdsp {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct snd_info_entry**) ; 
 int /*<<< orphan*/  snd_hdsp_proc_read ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_entry*,struct hdsp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hdsp *hdsp)
{
	struct snd_info_entry *entry;

	if (! FUNC0(hdsp->card, "hdsp", &entry))
		FUNC1(entry, hdsp, snd_hdsp_proc_read);
}