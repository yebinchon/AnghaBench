
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int UConfig1; int UConfig0; int Capabilities; int BuildNumber; int MinorVersion; int MajorVersion; int BootCodeLength; } ;
struct edgeport_serial {TYPE_2__ boot_descriptor; TYPE_3__* serial; } ;
typedef int __u8 ;
typedef int __u16 ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int dev; } ;


 int EDGE_BOOT_DESC_ADDR ;
 int EDGE_BOOT_DESC_LEN ;
 int dbg (char*,...) ;
 int dev_err (int *,char*) ;
 int le16_to_cpu (int ) ;
 int rom_read (TYPE_3__*,int,int ,int ,int *) ;

__attribute__((used)) static void get_boot_desc(struct edgeport_serial *edge_serial)
{
 int response;

 dbg("getting boot descriptor");

 response = rom_read(edge_serial->serial,
    (EDGE_BOOT_DESC_ADDR & 0xffff0000) >> 16,
    (__u16)(EDGE_BOOT_DESC_ADDR & 0x0000ffff),
    EDGE_BOOT_DESC_LEN,
    (__u8 *)(&edge_serial->boot_descriptor));

 if (response < 1)
  dev_err(&edge_serial->serial->dev->dev,
    "error in getting boot descriptor\n");
 else {
  dbg("**Boot Descriptor:");
  dbg("  BootCodeLength: %d",
      le16_to_cpu(edge_serial->boot_descriptor.BootCodeLength));
  dbg("  MajorVersion:   %d",
   edge_serial->boot_descriptor.MajorVersion);
  dbg("  MinorVersion:   %d",
   edge_serial->boot_descriptor.MinorVersion);
  dbg("  BuildNumber:    %d",
   le16_to_cpu(edge_serial->boot_descriptor.BuildNumber));
  dbg("  Capabilities:   0x%x",
        le16_to_cpu(edge_serial->boot_descriptor.Capabilities));
  dbg("  UConfig0:       %d",
   edge_serial->boot_descriptor.UConfig0);
  dbg("  UConfig1:       %d",
   edge_serial->boot_descriptor.UConfig1);
 }
}
