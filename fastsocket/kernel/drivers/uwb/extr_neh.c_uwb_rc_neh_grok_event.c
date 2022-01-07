
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_rceb {scalar_t__ bEventContext; int wEvent; int bEventType; } ;
struct uwb_rc_neh {int timer; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;


 int GFP_ATOMIC ;
 int del_timer_sync (int *) ;
 int dev_err (struct device*,char*,int ,int ,scalar_t__,size_t) ;
 int dev_warn (struct device*,char*,int ,int ,scalar_t__,size_t) ;
 struct uwb_rceb* kmalloc (size_t,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (struct uwb_rceb*,struct uwb_rceb*,size_t) ;
 int uwb_rc_neh_cb (struct uwb_rc_neh*,struct uwb_rceb*,size_t) ;
 struct uwb_rc_neh* uwb_rc_neh_lookup (struct uwb_rc*,struct uwb_rceb*) ;
 int uwb_rc_notif (struct uwb_rc*,struct uwb_rceb*,size_t) ;

__attribute__((used)) static void uwb_rc_neh_grok_event(struct uwb_rc *rc, struct uwb_rceb *rceb, size_t size)
{
 struct device *dev = &rc->uwb_dev.dev;
 struct uwb_rc_neh *neh;
 struct uwb_rceb *notif;

 if (rceb->bEventContext == 0) {
  notif = kmalloc(size, GFP_ATOMIC);
  if (notif) {
   memcpy(notif, rceb, size);
   uwb_rc_notif(rc, notif, size);
  } else
   dev_err(dev, "event 0x%02x/%04x/%02x (%zu bytes): no memory\n",
    rceb->bEventType, le16_to_cpu(rceb->wEvent),
    rceb->bEventContext, size);
 } else {
  neh = uwb_rc_neh_lookup(rc, rceb);
  if (neh) {
   del_timer_sync(&neh->timer);
   uwb_rc_neh_cb(neh, rceb, size);
  } else
   dev_warn(dev, "event 0x%02x/%04x/%02x (%zu bytes): nobody cared\n",
     rceb->bEventType, le16_to_cpu(rceb->wEvent),
     rceb->bEventContext, size);
 }
}
