#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  UConfig1; int /*<<< orphan*/  UConfig0; int /*<<< orphan*/  Capabilities; int /*<<< orphan*/  BuildNumber; int /*<<< orphan*/  MinorVersion; int /*<<< orphan*/  MajorVersion; int /*<<< orphan*/  BootCodeLength; } ;
struct edgeport_serial {TYPE_2__ boot_descriptor; TYPE_3__* serial; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EDGE_BOOT_DESC_ADDR ; 
 int /*<<< orphan*/  EDGE_BOOT_DESC_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct edgeport_serial *edge_serial)
{
	int response;

	FUNC0("getting boot descriptor");

	response = FUNC3(edge_serial->serial,
				(EDGE_BOOT_DESC_ADDR & 0xffff0000) >> 16,
				(__u16)(EDGE_BOOT_DESC_ADDR & 0x0000ffff),
				EDGE_BOOT_DESC_LEN,
				(__u8 *)(&edge_serial->boot_descriptor));

	if (response < 1)
		FUNC1(&edge_serial->serial->dev->dev,
				"error in getting boot descriptor\n");
	else {
		FUNC0("**Boot Descriptor:");
		FUNC0("  BootCodeLength: %d",
		    FUNC2(edge_serial->boot_descriptor.BootCodeLength));
		FUNC0("  MajorVersion:   %d",
			edge_serial->boot_descriptor.MajorVersion);
		FUNC0("  MinorVersion:   %d",
			edge_serial->boot_descriptor.MinorVersion);
		FUNC0("  BuildNumber:    %d",
			FUNC2(edge_serial->boot_descriptor.BuildNumber));
		FUNC0("  Capabilities:   0x%x",
		      FUNC2(edge_serial->boot_descriptor.Capabilities));
		FUNC0("  UConfig0:       %d",
			edge_serial->boot_descriptor.UConfig0);
		FUNC0("  UConfig1:       %d",
			edge_serial->boot_descriptor.UConfig1);
	}
}