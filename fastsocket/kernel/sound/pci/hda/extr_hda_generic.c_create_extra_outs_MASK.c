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
typedef  int /*<<< orphan*/  tmp ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 char** channel_name ; 
 int FUNC0 (struct hda_codec*,int const,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec, int num_pins,
			     const int *paths, const char *pfx)
{
	int i;

	for (i = 0; i < num_pins; i++) {
		const char *name;
		char tmp[44];
		int err, idx = 0;

		if (num_pins == 2 && i == 1 && !FUNC2(pfx, "Speaker"))
			name = "Bass Speaker";
		else if (num_pins >= 3) {
			FUNC1(tmp, sizeof(tmp), "%s %s",
				 pfx, channel_name[i]);
			name = tmp;
		} else {
			name = pfx;
			idx = i;
		}
		err = FUNC0(codec, paths[i], name, idx);
		if (err < 0)
			return err;
	}
	return 0;
}