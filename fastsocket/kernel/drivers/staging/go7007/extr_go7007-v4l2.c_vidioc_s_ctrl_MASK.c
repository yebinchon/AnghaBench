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
struct v4l2_queryctrl {scalar_t__* name; int /*<<< orphan*/  id; } ;
struct v4l2_control {scalar_t__* name; int /*<<< orphan*/  id; } ;
struct go7007_file {struct go7007* go; } ;
struct go7007 {int /*<<< orphan*/  i2c_adapter; int /*<<< orphan*/  i2c_adapter_online; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  query ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  VIDIOC_QUERYCTRL ; 
 int /*<<< orphan*/  VIDIOC_S_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct v4l2_queryctrl*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_queryctrl*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct v4l2_queryctrl*,struct go7007*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				struct v4l2_control *ctrl)
{
	struct go7007 *go = ((struct go7007_file *) priv)->go;
	struct v4l2_queryctrl query;

	if (!go->i2c_adapter_online)
		return -EIO;

	FUNC1(&query, 0, sizeof(query));
	query.id = ctrl->id;
	FUNC0(&go->i2c_adapter, VIDIOC_QUERYCTRL, &query);
	if (query.name[0] == 0)
		return FUNC2(ctrl, go);
	FUNC0(&go->i2c_adapter, VIDIOC_S_CTRL, ctrl);

	return 0;
}