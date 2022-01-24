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
struct TYPE_5__ {char* RomSize; char* RamSize; char* CpuRev; char* BoardRev; char* NumPorts; int SerNumLength; int AssemblyNumLength; int OemAssyNumLength; char* UartType; char* IonPid; char* IonConfig; int /*<<< orphan*/  OemAssyNumber; int /*<<< orphan*/  AssemblyNumber; int /*<<< orphan*/  SerialNumber; scalar_t__* DescDate; } ;
struct edgeport_serial {TYPE_2__ manuf_descriptor; TYPE_3__* serial; } ;
typedef  int /*<<< orphan*/  string ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EDGE_MANUF_DESC_ADDR ; 
 int /*<<< orphan*/  EDGE_MANUF_DESC_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct edgeport_serial *edge_serial)
{
	int response;

	FUNC0("getting manufacturer descriptor");

	response = FUNC2(edge_serial->serial,
				(EDGE_MANUF_DESC_ADDR & 0xffff0000) >> 16,
				(__u16)(EDGE_MANUF_DESC_ADDR & 0x0000ffff),
				EDGE_MANUF_DESC_LEN,
				(__u8 *)(&edge_serial->manuf_descriptor));

	if (response < 1)
		FUNC1(&edge_serial->serial->dev->dev,
			"error in getting manufacturer descriptor\n");
	else {
		char string[30];
		FUNC0("**Manufacturer Descriptor");
		FUNC0("  RomSize:        %dK",
			edge_serial->manuf_descriptor.RomSize);
		FUNC0("  RamSize:        %dK",
			edge_serial->manuf_descriptor.RamSize);
		FUNC0("  CpuRev:         %d",
			edge_serial->manuf_descriptor.CpuRev);
		FUNC0("  BoardRev:       %d",
			edge_serial->manuf_descriptor.BoardRev);
		FUNC0("  NumPorts:       %d",
			edge_serial->manuf_descriptor.NumPorts);
		FUNC0("  DescDate:       %d/%d/%d",
			edge_serial->manuf_descriptor.DescDate[0],
			edge_serial->manuf_descriptor.DescDate[1],
			edge_serial->manuf_descriptor.DescDate[2]+1900);
		FUNC3(string, sizeof(string),
			edge_serial->manuf_descriptor.SerialNumber,
			edge_serial->manuf_descriptor.SerNumLength/2);
		FUNC0("  SerialNumber: %s", string);
		FUNC3(string, sizeof(string),
			edge_serial->manuf_descriptor.AssemblyNumber,
			edge_serial->manuf_descriptor.AssemblyNumLength/2);
		FUNC0("  AssemblyNumber: %s", string);
		FUNC3(string, sizeof(string),
		    edge_serial->manuf_descriptor.OemAssyNumber,
		    edge_serial->manuf_descriptor.OemAssyNumLength/2);
		FUNC0("  OemAssyNumber:  %s", string);
		FUNC0("  UartType:       %d",
			edge_serial->manuf_descriptor.UartType);
		FUNC0("  IonPid:         %d",
			edge_serial->manuf_descriptor.IonPid);
		FUNC0("  IonConfig:      %d",
			edge_serial->manuf_descriptor.IonConfig);
	}
}