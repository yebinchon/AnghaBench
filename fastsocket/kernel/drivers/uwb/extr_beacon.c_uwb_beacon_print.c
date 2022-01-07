
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uwb_rc_evt_beacon {int wBPSTOffset; int bChannelNumber; } ;
struct TYPE_3__ {int dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct TYPE_4__ {int DestAddr; int SrcAddr; } ;
struct uwb_beacon_frame {int Beacon_Slot_Number; TYPE_2__ hdr; int Device_Identifier; } ;
typedef int macbuf ;
typedef int dstbuf ;
typedef int devbuf ;


 int UWB_ADDR_STRSIZE ;
 int dev_info (int *,char*,char*,char*,int ,int ,int ,char*) ;
 int uwb_dev_addr_print (char*,int,int *) ;
 int uwb_mac_addr_print (char*,int,int *) ;

__attribute__((used)) static void uwb_beacon_print(struct uwb_rc *rc, struct uwb_rc_evt_beacon *be,
        struct uwb_beacon_frame *bf)
{
 char macbuf[UWB_ADDR_STRSIZE];
 char devbuf[UWB_ADDR_STRSIZE];
 char dstbuf[UWB_ADDR_STRSIZE];

 uwb_mac_addr_print(macbuf, sizeof(macbuf), &bf->Device_Identifier);
 uwb_dev_addr_print(devbuf, sizeof(devbuf), &bf->hdr.SrcAddr);
 uwb_dev_addr_print(dstbuf, sizeof(dstbuf), &bf->hdr.DestAddr);
 dev_info(&rc->uwb_dev.dev,
   "BEACON from %s to %s (ch%u offset %u slot %u MAC %s)\n",
   devbuf, dstbuf, be->bChannelNumber, be->wBPSTOffset,
   bf->Beacon_Slot_Number, macbuf);
}
