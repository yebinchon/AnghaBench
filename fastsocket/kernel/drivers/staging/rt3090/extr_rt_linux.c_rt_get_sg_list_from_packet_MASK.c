#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int NumberOfElements; TYPE_1__* Elements; } ;
struct TYPE_6__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Address; } ;
typedef  TYPE_2__ RTMP_SCATTER_GATHER_LIST ;
typedef  TYPE_2__* PRTMP_SCATTER_GATHER_LIST ;
typedef  int /*<<< orphan*/  PNDIS_PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

PRTMP_SCATTER_GATHER_LIST
FUNC2(PNDIS_PACKET pPacket, RTMP_SCATTER_GATHER_LIST *sg)
{
	sg->NumberOfElements = 1;
	sg->Elements[0].Address =  FUNC0(pPacket);
	sg->Elements[0].Length = FUNC1(pPacket);
	return (sg);
}