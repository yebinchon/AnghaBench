
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_request {int length; int no_interrupt; } ;
typedef int msg ;


 int DBG_DATA_MSG ;
 int dbg_print (int ,char*,int,char*) ;
 int scnprintf (char*,int,char*,int,int ) ;

__attribute__((used)) static void dbg_queue(u8 addr, const struct usb_request *req, int status)
{
 char msg[DBG_DATA_MSG];

 if (req != ((void*)0)) {
  scnprintf(msg, sizeof(msg),
     "%d %d", !req->no_interrupt, req->length);
  dbg_print(addr, "QUEUE", status, msg);
 }
}
