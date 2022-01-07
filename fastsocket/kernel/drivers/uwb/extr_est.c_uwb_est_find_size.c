
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct uwb_rceb {int bEventType; scalar_t__ bEventContext; int wEvent; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
typedef int ssize_t ;
struct TYPE_5__ {int type_event_high; } ;


 int ENOENT ;
 int ENOSPC ;
 int dev_dbg (struct device*,char*,unsigned int,unsigned int,unsigned int,int ,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__* uwb_est ;
 int uwb_est_get_size (struct uwb_rc*,TYPE_2__*,int,struct uwb_rceb const*,size_t) ;
 int uwb_est_lock ;
 unsigned int uwb_est_used ;

ssize_t uwb_est_find_size(struct uwb_rc *rc, const struct uwb_rceb *rceb,
     size_t rceb_size)
{

 ssize_t size;
 struct device *dev = &rc->uwb_dev.dev;
 unsigned long flags;
 unsigned itr;
 u16 type_event_high, event;
 u8 *ptr = (u8 *) rceb;

 read_lock_irqsave(&uwb_est_lock, flags);
 size = -ENOSPC;
 if (rceb_size < sizeof(*rceb))
  goto out;
 event = le16_to_cpu(rceb->wEvent);
 type_event_high = rceb->bEventType << 8 | (event & 0xff00) >> 8;
 for (itr = 0; itr < uwb_est_used; itr++) {
  if (uwb_est[itr].type_event_high != type_event_high)
   continue;
  size = uwb_est_get_size(rc, &uwb_est[itr],
     event & 0x00ff, rceb, rceb_size);

  if (size != -ENOENT)
   goto out;
 }
 dev_dbg(dev, "event 0x%02x/%04x/%02x: no handlers available; "
  "RCEB %02x %02x %02x %02x\n",
  (unsigned) rceb->bEventType,
  (unsigned) le16_to_cpu(rceb->wEvent),
  (unsigned) rceb->bEventContext,
  ptr[0], ptr[1], ptr[2], ptr[3]);
 size = -ENOENT;
out:
 read_unlock_irqrestore(&uwb_est_lock, flags);
 return size;
}
