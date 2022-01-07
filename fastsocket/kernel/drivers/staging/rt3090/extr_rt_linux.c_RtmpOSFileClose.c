
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RTMP_OS_FD ;


 int filp_close (int ,int *) ;

int RtmpOSFileClose(RTMP_OS_FD osfd)
{
 filp_close(osfd, ((void*)0));
 return 0;
}
