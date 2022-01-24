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

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 char const* FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(const char *file, bool is_kprobe)
{

	if (errno == ENOENT) {
		const char *config;

		if (!is_kprobe)
			config = "CONFIG_UPROBE_EVENTS";
		else
			config = "CONFIG_KPROBE_EVENTS";

		FUNC0("%s file does not exist - please rebuild kernel"
				" with %s.\n", file, config);
	} else
		FUNC0("Failed to open %s file: %s\n", file,
				FUNC1(errno));
}