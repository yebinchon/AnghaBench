
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int NumberOfElements; TYPE_1__* Elements; } ;
struct TYPE_6__ {int Length; int Address; } ;
typedef TYPE_2__ RTMP_SCATTER_GATHER_LIST ;
typedef TYPE_2__* PRTMP_SCATTER_GATHER_LIST ;
typedef int PNDIS_PACKET ;


 int GET_OS_PKT_DATAPTR (int ) ;
 int GET_OS_PKT_LEN (int ) ;

PRTMP_SCATTER_GATHER_LIST
rt_get_sg_list_from_packet(PNDIS_PACKET pPacket, RTMP_SCATTER_GATHER_LIST *sg)
{
 sg->NumberOfElements = 1;
 sg->Elements[0].Address = GET_OS_PKT_DATAPTR(pPacket);
 sg->Elements[0].Length = GET_OS_PKT_LEN(pPacket);
 return (sg);
}
