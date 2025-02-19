
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct us_data {int send_bulk_pipe; int recv_bulk_pipe; int dflags; int delay_wait; int send_ctrl_pipe; } ;


 int EIO ;
 int HZ ;
 int US_DEBUGP (char*,...) ;
 int US_FLIDX_DISCONNECTING ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_stor_clear_halt (struct us_data*,int ) ;
 int usb_stor_control_msg (struct us_data*,int ,int ,int ,int ,int ,void*,int ,int) ;
 int wait_event_interruptible_timeout (int ,scalar_t__,int) ;

__attribute__((used)) static int usb_stor_reset_common(struct us_data *us,
  u8 request, u8 requesttype,
  u16 value, u16 index, void *data, u16 size)
{
 int result;
 int result2;

 if (test_bit(US_FLIDX_DISCONNECTING, &us->dflags)) {
  US_DEBUGP("No reset during disconnect\n");
  return -EIO;
 }

 result = usb_stor_control_msg(us, us->send_ctrl_pipe,
   request, requesttype, value, index, data, size,
   5*HZ);
 if (result < 0) {
  US_DEBUGP("Soft reset failed: %d\n", result);
  return result;
 }



 wait_event_interruptible_timeout(us->delay_wait,
   test_bit(US_FLIDX_DISCONNECTING, &us->dflags),
   HZ*6);
 if (test_bit(US_FLIDX_DISCONNECTING, &us->dflags)) {
  US_DEBUGP("Reset interrupted by disconnect\n");
  return -EIO;
 }

 US_DEBUGP("Soft reset: clearing bulk-in endpoint halt\n");
 result = usb_stor_clear_halt(us, us->recv_bulk_pipe);

 US_DEBUGP("Soft reset: clearing bulk-out endpoint halt\n");
 result2 = usb_stor_clear_halt(us, us->send_bulk_pipe);


 if (result >= 0)
  result = result2;
 if (result < 0)
  US_DEBUGP("Soft reset failed\n");
 else
  US_DEBUGP("Soft reset done\n");
 return result;
}
