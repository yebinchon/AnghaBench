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
struct ehci_hcd {int /*<<< orphan*/  companion_ports; int /*<<< orphan*/  hcs_params; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PORT_OWNER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct ehci_hcd* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_hcd*,int,int) ; 
 int FUNC7 (char const*,char*,int*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			       struct device_attribute *attr,
			       const char *buf, size_t count)
{
	struct ehci_hcd		*ehci;
	int			portnum, new_owner;

	ehci = FUNC4(FUNC1(FUNC3(dev)));
	new_owner = PORT_OWNER;		/* Owned by companion */
	if (FUNC7(buf, "%d", &portnum) != 1)
		return -EINVAL;
	if (portnum < 0) {
		portnum = - portnum;
		new_owner = 0;		/* Owned by EHCI */
	}
	if (portnum <= 0 || portnum > FUNC0(ehci->hcs_params))
		return -ENOENT;
	portnum--;
	if (new_owner)
		FUNC5(portnum, &ehci->companion_ports);
	else
		FUNC2(portnum, &ehci->companion_ports);
	FUNC6(ehci, portnum, new_owner);
	return count;
}