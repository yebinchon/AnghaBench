
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int f_pos; TYPE_1__* f_op; } ;
struct TYPE_5__ {int (* read ) (TYPE_2__*,char*,int,int *) ;} ;
typedef TYPE_2__* RTMP_OS_FD ;


 int DBGPRINT (int ,char*) ;
 int RT_DEBUG_ERROR ;
 int stub1 (TYPE_2__*,char*,int,int *) ;

int RtmpOSFileRead(RTMP_OS_FD osfd, char *pDataPtr, int readLen)
{

 if (osfd->f_op && osfd->f_op->read)
 {
  return osfd->f_op->read(osfd, pDataPtr, readLen, &osfd->f_pos);
 }
 else
 {
  DBGPRINT(RT_DEBUG_ERROR, ("no file read method\n"));
  return -1;
 }
}
