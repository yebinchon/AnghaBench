#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thermal_zone_device {TYPE_2__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;
struct TYPE_4__ {int (* get_trip_type ) (struct thermal_zone_device*,int,int*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
#define  THERMAL_TRIP_ACTIVE 131 
#define  THERMAL_TRIP_CRITICAL 130 
#define  THERMAL_TRIP_HOT 129 
#define  THERMAL_TRIP_PASSIVE 128 
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC2 (struct thermal_zone_device*,int,int*) ; 
 struct thermal_zone_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
		     char *buf)
{
	struct thermal_zone_device *tz = FUNC3(dev);
	enum thermal_trip_type type;
	int trip, result;

	if (!tz->ops->get_trip_type)
		return -EPERM;

	if (!FUNC1(attr->attr.name, "trip_point_%d_type", &trip))
		return -EINVAL;

	result = tz->ops->get_trip_type(tz, trip, &type);
	if (result)
		return result;

	switch (type) {
	case THERMAL_TRIP_CRITICAL:
		return FUNC0(buf, "critical\n");
	case THERMAL_TRIP_HOT:
		return FUNC0(buf, "hot\n");
	case THERMAL_TRIP_PASSIVE:
		return FUNC0(buf, "passive\n");
	case THERMAL_TRIP_ACTIVE:
		return FUNC0(buf, "active\n");
	default:
		return FUNC0(buf, "unknown\n");
	}
}