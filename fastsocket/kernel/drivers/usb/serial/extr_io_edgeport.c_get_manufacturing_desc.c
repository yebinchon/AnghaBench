
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* RomSize; char* RamSize; char* CpuRev; char* BoardRev; char* NumPorts; int SerNumLength; int AssemblyNumLength; int OemAssyNumLength; char* UartType; char* IonPid; char* IonConfig; int OemAssyNumber; int AssemblyNumber; int SerialNumber; scalar_t__* DescDate; } ;
struct edgeport_serial {TYPE_2__ manuf_descriptor; TYPE_3__* serial; } ;
typedef int string ;
typedef int __u8 ;
typedef int __u16 ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int dev; } ;


 int EDGE_MANUF_DESC_ADDR ;
 int EDGE_MANUF_DESC_LEN ;
 int dbg (char*,...) ;
 int dev_err (int *,char*) ;
 int rom_read (TYPE_3__*,int,int ,int ,int *) ;
 int unicode_to_ascii (char*,int,int ,int) ;

__attribute__((used)) static void get_manufacturing_desc(struct edgeport_serial *edge_serial)
{
 int response;

 dbg("getting manufacturer descriptor");

 response = rom_read(edge_serial->serial,
    (EDGE_MANUF_DESC_ADDR & 0xffff0000) >> 16,
    (__u16)(EDGE_MANUF_DESC_ADDR & 0x0000ffff),
    EDGE_MANUF_DESC_LEN,
    (__u8 *)(&edge_serial->manuf_descriptor));

 if (response < 1)
  dev_err(&edge_serial->serial->dev->dev,
   "error in getting manufacturer descriptor\n");
 else {
  char string[30];
  dbg("**Manufacturer Descriptor");
  dbg("  RomSize:        %dK",
   edge_serial->manuf_descriptor.RomSize);
  dbg("  RamSize:        %dK",
   edge_serial->manuf_descriptor.RamSize);
  dbg("  CpuRev:         %d",
   edge_serial->manuf_descriptor.CpuRev);
  dbg("  BoardRev:       %d",
   edge_serial->manuf_descriptor.BoardRev);
  dbg("  NumPorts:       %d",
   edge_serial->manuf_descriptor.NumPorts);
  dbg("  DescDate:       %d/%d/%d",
   edge_serial->manuf_descriptor.DescDate[0],
   edge_serial->manuf_descriptor.DescDate[1],
   edge_serial->manuf_descriptor.DescDate[2]+1900);
  unicode_to_ascii(string, sizeof(string),
   edge_serial->manuf_descriptor.SerialNumber,
   edge_serial->manuf_descriptor.SerNumLength/2);
  dbg("  SerialNumber: %s", string);
  unicode_to_ascii(string, sizeof(string),
   edge_serial->manuf_descriptor.AssemblyNumber,
   edge_serial->manuf_descriptor.AssemblyNumLength/2);
  dbg("  AssemblyNumber: %s", string);
  unicode_to_ascii(string, sizeof(string),
      edge_serial->manuf_descriptor.OemAssyNumber,
      edge_serial->manuf_descriptor.OemAssyNumLength/2);
  dbg("  OemAssyNumber:  %s", string);
  dbg("  UartType:       %d",
   edge_serial->manuf_descriptor.UartType);
  dbg("  IonPid:         %d",
   edge_serial->manuf_descriptor.IonPid);
  dbg("  IonConfig:      %d",
   edge_serial->manuf_descriptor.IonConfig);
 }
}
