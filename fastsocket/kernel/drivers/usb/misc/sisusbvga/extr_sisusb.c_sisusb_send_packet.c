
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sisusb_usb_data {int dummy; } ;
struct sisusb_packet {scalar_t__ data; } ;
typedef int ssize_t ;
typedef int __le32 ;


 int SISUSB_CORRECT_ENDIANNESS_PACKET (struct sisusb_packet*) ;
 int SISUSB_EP_GFX_IN ;
 int SISUSB_EP_GFX_OUT ;
 scalar_t__ le32_to_cpu (int ) ;
 int sisusb_recv_bulk_msg (struct sisusb_usb_data*,int ,int,char*,int *,int *,int ) ;
 int sisusb_send_bulk_msg (struct sisusb_usb_data*,int ,int,char*,int *,int ,int *,int ,int ) ;
 int sisusb_wait_all_out_complete (struct sisusb_usb_data*) ;

__attribute__((used)) static int sisusb_send_packet(struct sisusb_usb_data *sisusb, int len,
      struct sisusb_packet *packet)
{
 int ret;
 ssize_t bytes_transferred = 0;
 __le32 tmp;

 if (len == 6)
  packet->data = 0;







 SISUSB_CORRECT_ENDIANNESS_PACKET(packet);


 ret = sisusb_send_bulk_msg(sisusb, SISUSB_EP_GFX_OUT, len,
   (char *)packet, ((void*)0), 0, &bytes_transferred, 0, 0);

 if ((ret == 0) && (len == 6)) {




  ret = sisusb_recv_bulk_msg(sisusb, SISUSB_EP_GFX_IN, 4,
    (char *)&tmp, ((void*)0), &bytes_transferred, 0);

  packet->data = le32_to_cpu(tmp);
 }

 return ret;
}
