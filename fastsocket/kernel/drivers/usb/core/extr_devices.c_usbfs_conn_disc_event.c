
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conndiscevcnt ;
 int deviceconndiscwq ;
 int wake_up (int *) ;

void usbfs_conn_disc_event(void)
{
 conndiscevcnt++;
 wake_up(&deviceconndiscwq);
}
