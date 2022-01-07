
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sisusb_usb_data {int dummy; } ;
struct sisusb_packet {int header; int address; int data; } ;


 int sisusb_send_packet (struct sisusb_usb_data*,int,struct sisusb_packet*) ;

__attribute__((used)) static int
sisusb_write_pci_config(struct sisusb_usb_data *sisusb, int regnum, u32 data)
{
 struct sisusb_packet packet;
 int ret;

 packet.header = 0x008f;
 packet.address = regnum | 0x10000;
 packet.data = data;
 ret = sisusb_send_packet(sisusb, 10, &packet);
 return ret;
}
