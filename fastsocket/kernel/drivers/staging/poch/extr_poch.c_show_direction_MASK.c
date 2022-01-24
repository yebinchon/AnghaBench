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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct channel_info {scalar_t__ dir; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct channel_info* FUNC0 (struct device*) ; 
 int FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	struct channel_info *channel = FUNC0(dev);
	int len;

	len = FUNC1(buf, "%s\n", (channel->dir ? "tx" : "rx"));
	return len;
}