
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int wait_q; } ;


 int HZ ;
 int sisusb_all_free (struct sisusb_usb_data*) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int
sisusb_wait_all_out_complete(struct sisusb_usb_data *sisusb)
{
 int timeout = 5 * HZ, i = 1;

 wait_event_timeout(sisusb->wait_q,
    (i = sisusb_all_free(sisusb)),
     timeout);

 return i;
}
