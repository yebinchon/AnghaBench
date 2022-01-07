
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f_pos; } ;
typedef TYPE_1__* RTMP_OS_FD ;



void RtmpOSFileSeek(RTMP_OS_FD osfd, int offset)
{
 osfd->f_pos = offset;
}
