
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {int dummy; } ;


 int __rfcomm_dlc_close (struct rfcomm_dlc*,int) ;
 int rfcomm_lock () ;
 int rfcomm_unlock () ;

int rfcomm_dlc_close(struct rfcomm_dlc *d, int err)
{
 int r;

 rfcomm_lock();

 r = __rfcomm_dlc_close(d, err);

 rfcomm_unlock();
 return r;
}
