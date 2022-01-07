
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sisusb_usb_data {int dummy; } ;
struct sisusb_packet {int header; int address; int data; } ;


 int sisusb_send_packet (struct sisusb_usb_data*,int,struct sisusb_packet*) ;

__attribute__((used)) static int sisusb_write_memio_byte(struct sisusb_usb_data *sisusb, int type,
       u32 addr, u8 data)
{
 struct sisusb_packet packet;
 int ret;

 packet.header = (1 << (addr & 3)) | (type << 6);
 packet.address = addr & ~3;
 packet.data = data << ((addr & 3) << 3);
 ret = sisusb_send_packet(sisusb, 10, &packet);
 return ret;
}
