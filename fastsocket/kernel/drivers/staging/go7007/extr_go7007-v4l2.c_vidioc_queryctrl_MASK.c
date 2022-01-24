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
struct v4l2_queryctrl {int /*<<< orphan*/ * name; } ;
struct go7007_file {struct go7007* go; } ;
struct go7007 {int /*<<< orphan*/  i2c_adapter; int /*<<< orphan*/  i2c_adapter_online; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  VIDIOC_QUERYCTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct v4l2_queryctrl*) ; 
 int FUNC1 (struct v4l2_queryctrl*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
			   struct v4l2_queryctrl *query)
{
	struct go7007 *go = ((struct go7007_file *) priv)->go;

	if (!go->i2c_adapter_online)
		return -EIO;

	FUNC0(&go->i2c_adapter, VIDIOC_QUERYCTRL, query);

	return (!query->name[0]) ? FUNC1(query) : 0;
}