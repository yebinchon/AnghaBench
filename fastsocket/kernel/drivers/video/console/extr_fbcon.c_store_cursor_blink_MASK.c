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
struct fb_info {int /*<<< orphan*/  fbcon_par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int* con2fb_map ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int fbcon_cursor_noblink ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 scalar_t__ fbcon_has_exited ; 
 size_t fg_console ; 
 struct fb_info** registered_fb ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *device,
				  struct device_attribute *attr,
				  const char *buf, size_t count)
{
	struct fb_info *info;
	int blink, idx;
	char **last = NULL;

	if (fbcon_has_exited)
		return count;

	FUNC0();
	idx = con2fb_map[fg_console];

	if (idx == -1 || registered_fb[idx] == NULL)
		goto err;

	info = registered_fb[idx];

	if (!info->fbcon_par)
		goto err;

	blink = FUNC4(buf, last, 0);

	if (blink) {
		fbcon_cursor_noblink = 0;
		FUNC1(info);
	} else {
		fbcon_cursor_noblink = 1;
		FUNC2(info);
	}

err:
	FUNC3();
	return count;
}