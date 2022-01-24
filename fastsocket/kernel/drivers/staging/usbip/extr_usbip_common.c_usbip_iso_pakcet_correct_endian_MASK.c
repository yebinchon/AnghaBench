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
struct usbip_iso_packet_descriptor {void* actual_length; void* status; void* length; void* offset; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(
				struct usbip_iso_packet_descriptor *iso,
				int send)
{
	/* does not need all members. but copy all simply. */
	if (send) {
		iso->offset	= FUNC1(iso->offset);
		iso->length	= FUNC1(iso->length);
		iso->status	= FUNC1(iso->status);
		iso->actual_length = FUNC1(iso->actual_length);
	} else {
		iso->offset	= FUNC0(iso->offset);
		iso->length	= FUNC0(iso->length);
		iso->status	= FUNC0(iso->status);
		iso->actual_length = FUNC0(iso->actual_length);
	}
}