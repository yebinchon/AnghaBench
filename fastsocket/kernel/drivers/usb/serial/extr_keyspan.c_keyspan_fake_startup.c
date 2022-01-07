
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial {TYPE_2__* dev; } ;
struct ihex_binrec {int len; scalar_t__ data; int addr; } ;
struct firmware {scalar_t__ data; } ;
struct TYPE_3__ {int idProduct; int bcdDevice; } ;
struct TYPE_4__ {int dev; TYPE_1__ descriptor; } ;


 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int dbg (char*,...) ;
 int dev_err (int *,char*,...) ;
 int ezusb_set_reset (struct usb_serial*,int) ;
 int ezusb_writememory (struct usb_serial*,int ,unsigned char*,int ,int) ;
 struct ihex_binrec* ihex_next_binrec (struct ihex_binrec const*) ;
 int le16_to_cpu (int ) ;
 int release_firmware (struct firmware const*) ;
 scalar_t__ request_ihex_firmware (struct firmware const**,char*,int *) ;

__attribute__((used)) static int keyspan_fake_startup(struct usb_serial *serial)
{
 int response;
 const struct ihex_binrec *record;
 char *fw_name;
 const struct firmware *fw;

 dbg("Keyspan startup version %04x product %04x",
     le16_to_cpu(serial->dev->descriptor.bcdDevice),
     le16_to_cpu(serial->dev->descriptor.idProduct));

 if ((le16_to_cpu(serial->dev->descriptor.bcdDevice) & 0x8000)
        != 0x8000) {
  dbg("Firmware already loaded.  Quitting.");
  return 1;
 }


 switch (le16_to_cpu(serial->dev->descriptor.idProduct)) {
 case 133:
  fw_name = "keyspan/usa28.fw";
  break;

 case 132:
  fw_name = "keyspan/usa28x.fw";
  break;

 case 131:
  fw_name = "keyspan/usa28xa.fw";
  break;

 case 130:
  fw_name = "keyspan/usa28xb.fw";
  break;

 case 137:
  fw_name = "keyspan/usa19.fw";
  break;

 case 136:
  fw_name = "keyspan/usa19qi.fw";
  break;

 case 139:
  fw_name = "keyspan/mpr.fw";
  break;

 case 135:
  fw_name = "keyspan/usa19qw.fw";
  break;

 case 138:
  fw_name = "keyspan/usa18x.fw";
  break;

 case 134:
  fw_name = "keyspan/usa19w.fw";
  break;

 case 129:
  fw_name = "keyspan/usa49w.fw";
  break;

 case 128:
  fw_name = "keyspan/usa49wlc.fw";
  break;

 default:
  dev_err(&serial->dev->dev, "Unknown product ID (%04x)\n",
   le16_to_cpu(serial->dev->descriptor.idProduct));
  return 1;
 }

 if (request_ihex_firmware(&fw, fw_name, &serial->dev->dev)) {
  dev_err(&serial->dev->dev, "Required keyspan firmware image (%s) unavailable.\n", fw_name);
  return(1);
 }

 dbg("Uploading Keyspan %s firmware.", fw_name);


 response = ezusb_set_reset(serial, 1);

 record = (const struct ihex_binrec *)fw->data;

 while (record) {
  response = ezusb_writememory(serial, be32_to_cpu(record->addr),
          (unsigned char *)record->data,
          be16_to_cpu(record->len), 0xa0);
  if (response < 0) {
   dev_err(&serial->dev->dev, "ezusb_writememory failed for Keyspan firmware (%d %04X %p %d)\n",
    response, be32_to_cpu(record->addr),
    record->data, be16_to_cpu(record->len));
   break;
  }
  record = ihex_next_binrec(record);
 }
 release_firmware(fw);


 response = ezusb_set_reset(serial, 0);


 return 1;
}
