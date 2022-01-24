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
 int FB_MAX ; 
 scalar_t__ ofonly ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 char** video_options ; 

int FUNC2(char *name, char **option)
{
	char *opt, *options = NULL;
	int opt_len, retval = 0;
	int name_len = FUNC0(name), i;

	if (name_len && ofonly && FUNC1(name, "offb", 4))
		retval = 1;

	if (name_len && !retval) {
		for (i = 0; i < FB_MAX; i++) {
			if (video_options[i] == NULL)
				continue;
			opt_len = FUNC0(video_options[i]);
			if (!opt_len)
				continue;
			opt = video_options[i];
			if (!FUNC1(name, opt, name_len) &&
			    opt[name_len] == ':')
				options = opt + name_len + 1;
		}
	}
	if (options && !FUNC1(options, "off", 3))
		retval = 1;

	if (option)
		*option = options;

	return retval;
}