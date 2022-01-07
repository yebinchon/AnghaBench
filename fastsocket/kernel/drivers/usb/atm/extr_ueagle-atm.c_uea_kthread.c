
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uea_softc {int (* stat ) (struct uea_softc*) ;scalar_t__ reset; } ;


 int EAGAIN ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 int kthread_should_stop () ;
 int msecs_to_jiffies (int) ;
 int set_freezable () ;
 int stub1 (struct uea_softc*) ;
 int try_to_freeze () ;
 int uea_enters (int ) ;
 int uea_leaves (int ) ;
 int uea_start_reset (struct uea_softc*) ;
 int uea_wait (struct uea_softc*,int ,int ) ;

__attribute__((used)) static int uea_kthread(void *data)
{
 struct uea_softc *sc = data;
 int ret = -EAGAIN;

 set_freezable();
 uea_enters(INS_TO_USBDEV(sc));
 while (!kthread_should_stop()) {
  if (ret < 0 || sc->reset)
   ret = uea_start_reset(sc);
  if (!ret)
   ret = sc->stat(sc);
  if (ret != -EAGAIN)
   uea_wait(sc, 0, msecs_to_jiffies(1000));
  try_to_freeze();
 }
 uea_leaves(INS_TO_USBDEV(sc));
 return ret;
}
