
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbdrv_private {int * RegInUrb; int * RegOutUrb; int ** WlanRxDataUrb; int ** WlanTxDataUrb; } ;


 int ZM_MAX_RX_URB_NUM ;
 int ZM_MAX_TX_URB_NUM ;
 int usb_unlink_urb (int *) ;

void zfLnxUnlinkAllUrbs(struct usbdrv_private *macp)
{
    int i;


    for (i = 0; i < ZM_MAX_TX_URB_NUM; i++)
    {
        if (macp->WlanTxDataUrb[i] != ((void*)0))
        {
            usb_unlink_urb(macp->WlanTxDataUrb[i]);
        }
    }


    for (i = 0; i < ZM_MAX_RX_URB_NUM; i++)
    {
        if (macp->WlanRxDataUrb[i] != ((void*)0))
        {
            usb_unlink_urb(macp->WlanRxDataUrb[i]);
        }
    }


    usb_unlink_urb(macp->RegOutUrb);

    usb_unlink_urb(macp->RegInUrb);
}
