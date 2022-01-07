
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i1480u {TYPE_1__* rx_buf; } ;
struct TYPE_2__ {scalar_t__ urb; } ;


 int i1480u_RX_BUFS ;
 int usb_unlink_urb (scalar_t__) ;

__attribute__((used)) static
void i1480u_rx_unlink_urbs(struct i1480u *i1480u)
{
 int cnt;
 for (cnt = 0; cnt < i1480u_RX_BUFS; cnt++) {
  if (i1480u->rx_buf[cnt].urb)
   usb_unlink_urb(i1480u->rx_buf[cnt].urb);
 }
}
