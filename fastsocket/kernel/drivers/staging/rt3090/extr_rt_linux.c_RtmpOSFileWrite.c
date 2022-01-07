
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int f_pos; TYPE_1__* f_op; } ;
struct TYPE_5__ {int (* write ) (TYPE_2__*,char*,size_t,int *) ;} ;
typedef TYPE_2__* RTMP_OS_FD ;


 int stub1 (TYPE_2__*,char*,size_t,int *) ;

int RtmpOSFileWrite(RTMP_OS_FD osfd, char *pDataPtr, int writeLen)
{
 return osfd->f_op->write(osfd, pDataPtr, (size_t)writeLen, &osfd->f_pos);
}
