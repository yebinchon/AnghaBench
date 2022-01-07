
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_ctrlrequest {int wLength; int wIndex; int wValue; int bRequest; int bRequestType; } ;
typedef int msg ;


 int DBG_DATA_MSG ;
 int dbg_print (int ,char*,int ,char*) ;
 int le16_to_cpu (int ) ;
 int scnprintf (char*,int,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dbg_setup(u8 addr, const struct usb_ctrlrequest *req)
{
 char msg[DBG_DATA_MSG];

 if (req != ((void*)0)) {
  scnprintf(msg, sizeof(msg),
     "%02X %02X %04X %04X %d", req->bRequestType,
     req->bRequest, le16_to_cpu(req->wValue),
     le16_to_cpu(req->wIndex), le16_to_cpu(req->wLength));
  dbg_print(addr, "SETUP", 0, msg);
 }
}
