
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i1480u {int * rx_skb; TYPE_1__* rx_buf; } ;
struct TYPE_2__ {scalar_t__ urb; int * data; } ;


 int dev_kfree_skb (int *) ;
 int i1480u_RX_BUFS ;
 int usb_free_urb (scalar_t__) ;
 int usb_kill_urb (scalar_t__) ;

void i1480u_rx_release(struct i1480u *i1480u)
{
 int cnt;
 for (cnt = 0; cnt < i1480u_RX_BUFS; cnt++) {
  if (i1480u->rx_buf[cnt].data)
   dev_kfree_skb(i1480u->rx_buf[cnt].data);
  if (i1480u->rx_buf[cnt].urb) {
   usb_kill_urb(i1480u->rx_buf[cnt].urb);
   usb_free_urb(i1480u->rx_buf[cnt].urb);
  }
 }
 if (i1480u->rx_skb != ((void*)0))
  dev_kfree_skb(i1480u->rx_skb);
}
