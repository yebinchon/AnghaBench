
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bEventContext; int wEvent; int bEventType; } ;
struct i1480_rceb {TYPE_1__ rceb; } ;
struct i1480 {int (* rc_setup ) (struct i1480*) ;int (* wait_init_done ) (struct i1480*) ;int evt_result; int mac_fw_name; int dev; int mac_fw_name_deprecate; scalar_t__ evt_buf; } ;


 int EIO ;
 int ENOENT ;
 int __mac_fw_upload (struct i1480*,int ,char*) ;
 int dev_err (int ,char*,int,...) ;
 int dev_warn (int ,char*,int ,int ) ;
 int i1480_CET_VS1 ;
 int i1480_EVT_RM_INIT_DONE ;
 int i1480_cmd_reset (struct i1480*) ;
 int i1480_fw_is_running_q (struct i1480*) ;
 scalar_t__ i1480_rceb_check (struct i1480*,TYPE_1__*,int *,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int stub1 (struct i1480*) ;
 int stub2 (struct i1480*) ;

int i1480_mac_fw_upload(struct i1480 *i1480)
{
 int result = 0, deprecated_name = 0;
 struct i1480_rceb *rcebe = (void *) i1480->evt_buf;

 result = __mac_fw_upload(i1480, i1480->mac_fw_name, "MAC");
 if (result == -ENOENT) {
  result = __mac_fw_upload(i1480, i1480->mac_fw_name_deprecate,
      "MAC");
  deprecated_name = 1;
 }
 if (result < 0)
  return result;
 if (deprecated_name == 1)
  dev_warn(i1480->dev,
    "WARNING: firmware file name %s is deprecated, "
    "please rename to %s\n",
    i1480->mac_fw_name_deprecate, i1480->mac_fw_name);
 result = i1480_fw_is_running_q(i1480);
 if (result < 0)
  goto error_fw_not_running;
 result = i1480->rc_setup ? i1480->rc_setup(i1480) : 0;
 if (result < 0) {
  dev_err(i1480->dev, "Cannot setup after MAC fw upload: %d\n",
   result);
  goto error_setup;
 }
 result = i1480->wait_init_done(i1480);
 if (result < 0) {
  dev_err(i1480->dev, "MAC fw '%s': Initialization timed out "
   "(%d)\n", i1480->mac_fw_name, result);
  goto error_init_timeout;
 }

 if (i1480->evt_result != sizeof(*rcebe)) {
  dev_err(i1480->dev, "MAC fw '%s': initialization event returns "
   "wrong size (%zu bytes vs %zu needed)\n",
   i1480->mac_fw_name, i1480->evt_result, sizeof(*rcebe));
  goto error_size;
 }
 result = -EIO;
 if (i1480_rceb_check(i1480, &rcebe->rceb, ((void*)0), 0, i1480_CET_VS1,
        i1480_EVT_RM_INIT_DONE) < 0) {
  dev_err(i1480->dev, "wrong initialization event 0x%02x/%04x/%02x "
   "received; expected 0x%02x/%04x/00\n",
   rcebe->rceb.bEventType, le16_to_cpu(rcebe->rceb.wEvent),
   rcebe->rceb.bEventContext, i1480_CET_VS1,
   i1480_EVT_RM_INIT_DONE);
  goto error_init_timeout;
 }
 result = i1480_cmd_reset(i1480);
 if (result < 0)
  dev_err(i1480->dev, "MAC fw '%s': MBOA reset failed (%d)\n",
   i1480->mac_fw_name, result);
error_fw_not_running:
error_init_timeout:
error_size:
error_setup:
 return result;
}
