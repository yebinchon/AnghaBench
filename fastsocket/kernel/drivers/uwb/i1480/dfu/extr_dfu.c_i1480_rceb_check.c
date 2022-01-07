
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct uwb_rceb {unsigned int bEventContext; unsigned int bEventType; int wEvent; } ;
struct i1480 {struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_err (struct device*,char*,char const*,unsigned int,unsigned int) ;
 unsigned int le16_to_cpu (int ) ;

int i1480_rceb_check(const struct i1480 *i1480, const struct uwb_rceb *rceb,
       const char *cmd, u8 context, u8 expected_type,
       unsigned expected_event)
{
 int result = 0;
 struct device *dev = i1480->dev;
 if (rceb->bEventContext != context) {
  if (cmd)
   dev_err(dev, "%s: unexpected context id 0x%02x "
    "(expected 0x%02x)\n", cmd,
    rceb->bEventContext, context);
  result = -EINVAL;
 }
 if (rceb->bEventType != expected_type) {
  if (cmd)
   dev_err(dev, "%s: unexpected event type 0x%02x "
    "(expected 0x%02x)\n", cmd,
    rceb->bEventType, expected_type);
  result = -EINVAL;
 }
 if (le16_to_cpu(rceb->wEvent) != expected_event) {
  if (cmd)
   dev_err(dev, "%s: unexpected event 0x%04x "
    "(expected 0x%04x)\n", cmd,
    le16_to_cpu(rceb->wEvent), expected_event);
  result = -EINVAL;
 }
 return result;
}
