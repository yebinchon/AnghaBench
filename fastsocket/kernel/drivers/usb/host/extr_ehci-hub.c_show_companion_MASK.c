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
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct ehci_hcd* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,char*,int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			      struct device_attribute *attr,
			      char *buf)
{
	struct ehci_hcd		*ehci;
	int			nports, index, n;
	int			count = PAGE_SIZE;
	char			*ptr = buf;

	ehci = FUNC3(FUNC1(FUNC2(dev)));
	nports = FUNC0(ehci->hcs_params);

	for (index = 0; index < nports; ++index) {
		if (FUNC5(index, &ehci->companion_ports)) {
			n = FUNC4(ptr, count, "%d\n", index + 1);
			ptr += n;
			count -= n;
		}
	}
	return ptr - buf;
}