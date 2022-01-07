
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int thread_done; int * thread; } ;
struct TYPE_3__ {int thread_done; int * thread; } ;
struct usbip_device {TYPE_2__ tcp_tx; TYPE_1__ tcp_rx; } ;


 int SIGKILL ;
 int send_sig (int ,int *,int) ;
 int usbip_udbg (char*,struct usbip_device*) ;
 int wait_for_completion (int *) ;

void usbip_stop_threads(struct usbip_device *ud)
{

 if (ud->tcp_rx.thread != ((void*)0)) {
  send_sig(SIGKILL, ud->tcp_rx.thread, 1);
  wait_for_completion(&ud->tcp_rx.thread_done);
  usbip_udbg("rx_thread for ud %p has finished\n", ud);
 }

 if (ud->tcp_tx.thread != ((void*)0)) {
  send_sig(SIGKILL, ud->tcp_tx.thread, 1);
  wait_for_completion(&ud->tcp_tx.thread_done);
  usbip_udbg("tx_thread for ud %p has finished\n", ud);
 }
}
