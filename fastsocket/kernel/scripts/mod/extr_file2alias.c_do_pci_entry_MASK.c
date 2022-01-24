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
struct pci_device_id {int vendor; int device; int subvendor; int subdevice; int class; int class_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,unsigned char) ; 
 scalar_t__ PCI_ANY_ID ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,unsigned char) ; 

__attribute__((used)) static int FUNC5(const char *filename,
			struct pci_device_id *id, char *alias)
{
	/* Class field can be divided into these three. */
	unsigned char baseclass, subclass, interface,
		baseclass_mask, subclass_mask, interface_mask;

	id->vendor = FUNC1(id->vendor);
	id->device = FUNC1(id->device);
	id->subvendor = FUNC1(id->subvendor);
	id->subdevice = FUNC1(id->subdevice);
	id->class = FUNC1(id->class);
	id->class_mask = FUNC1(id->class_mask);

	FUNC3(alias, "pci:");
	FUNC0(alias, "v", id->vendor != PCI_ANY_ID, id->vendor);
	FUNC0(alias, "d", id->device != PCI_ANY_ID, id->device);
	FUNC0(alias, "sv", id->subvendor != PCI_ANY_ID, id->subvendor);
	FUNC0(alias, "sd", id->subdevice != PCI_ANY_ID, id->subdevice);

	baseclass = (id->class) >> 16;
	baseclass_mask = (id->class_mask) >> 16;
	subclass = (id->class) >> 8;
	subclass_mask = (id->class_mask) >> 8;
	interface = id->class;
	interface_mask = id->class_mask;

	if ((baseclass_mask != 0 && baseclass_mask != 0xFF)
	    || (subclass_mask != 0 && subclass_mask != 0xFF)
	    || (interface_mask != 0 && interface_mask != 0xFF)) {
		FUNC4("Can't handle masks in %s:%04X\n",
		     filename, id->class_mask);
		return 0;
	}

	FUNC0(alias, "bc", baseclass_mask == 0xFF, baseclass);
	FUNC0(alias, "sc", subclass_mask == 0xFF, subclass);
	FUNC0(alias, "i", interface_mask == 0xFF, interface);
	FUNC2(alias);
	return 1;
}