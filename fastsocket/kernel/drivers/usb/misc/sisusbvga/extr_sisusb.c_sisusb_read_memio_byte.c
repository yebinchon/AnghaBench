
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct sisusb_usb_data {int dummy; } ;
struct sisusb_packet {int header; int address; int data; } ;


 int CLEARPACKET (struct sisusb_packet*) ;
 int sisusb_send_packet (struct sisusb_usb_data*,int,struct sisusb_packet*) ;

__attribute__((used)) static int sisusb_read_memio_byte(struct sisusb_usb_data *sisusb, int type,
       u32 addr, u8 *data)
{
 struct sisusb_packet packet;
 int ret;

 CLEARPACKET(&packet);
 packet.header = (1 << (addr & 3)) | (type << 6);
 packet.address = addr & ~3;
 ret = sisusb_send_packet(sisusb, 6, &packet);
 *data = (u8)(packet.data >> ((addr & 3) << 3));
 return ret;
}
