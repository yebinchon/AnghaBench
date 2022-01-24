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
struct usb_serial_port {int dummy; } ;
struct garmin_data {int mode; int serial_num; scalar_t__ privpkt; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int GARMIN_LAYERID_PRIVATE ; 
 int PRIV_PKTID_INFO_RESP ; 
 int VERSION_MAJOR ; 
 int VERSION_MINOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_serial_port*,int /*<<< orphan*/ *,int) ; 
 struct garmin_data* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC3(struct usb_serial_port *port)
{
	struct garmin_data *garmin_data_p = FUNC2(port);
	__le32 *pkt = (__le32 *)garmin_data_p->privpkt;

	pkt[0] = FUNC0(GARMIN_LAYERID_PRIVATE);
	pkt[1] = FUNC0(PRIV_PKTID_INFO_RESP);
	pkt[2] = FUNC0(12);
	pkt[3] = FUNC0(VERSION_MAJOR << 16 | VERSION_MINOR);
	pkt[4] = FUNC0(garmin_data_p->mode);
	pkt[5] = FUNC0(garmin_data_p->serial_num);

	FUNC1(port, (__u8 *)pkt, 6 * 4);
}