#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {struct wiphy wiphy; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			 struct device_attribute *attr,
			 char *buf) {
	struct wiphy *wiphy = &FUNC1(dev)->wiphy;
	return FUNC2(buf, "%s\n", FUNC0(&wiphy->dev));
}