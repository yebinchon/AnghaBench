
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;


 int KEVENT_WATCHDOG ;
 int zfLnxSignalThread (int *,int ) ;

void zfLnxWatchDogNotify(zdev_t* dev)
{
    zfLnxSignalThread(dev, KEVENT_WATCHDOG);
}
