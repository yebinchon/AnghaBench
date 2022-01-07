
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hidp_session {TYPE_3__* hid; TYPE_2__* input; int state; int flags; int bdaddr; } ;
struct hidp_conninfo {int vendor; int product; int version; int name; int state; int flags; int bdaddr; } ;
struct TYPE_6__ {int vendor; int product; int version; char* name; } ;
struct TYPE_4__ {int vendor; int product; int version; } ;
struct TYPE_5__ {char* name; TYPE_1__ id; } ;


 int bacpy (int *,int *) ;
 int memset (int ,int ,int) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static void __hidp_copy_session(struct hidp_session *session, struct hidp_conninfo *ci)
{
 bacpy(&ci->bdaddr, &session->bdaddr);

 ci->flags = session->flags;
 ci->state = session->state;

 ci->vendor = 0x0000;
 ci->product = 0x0000;
 ci->version = 0x0000;
 memset(ci->name, 0, 128);

 if (session->input) {
  ci->vendor = session->input->id.vendor;
  ci->product = session->input->id.product;
  ci->version = session->input->id.version;
  if (session->input->name)
   strncpy(ci->name, session->input->name, 128);
  else
   strncpy(ci->name, "HID Boot Device", 128);
 }

 if (session->hid) {
  ci->vendor = session->hid->vendor;
  ci->product = session->hid->product;
  ci->version = session->hid->version;
  strncpy(ci->name, session->hid->name, 128);
 }
}
