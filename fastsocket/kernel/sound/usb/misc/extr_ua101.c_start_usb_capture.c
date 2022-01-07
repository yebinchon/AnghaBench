
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__** urbs; } ;
struct ua101 {TYPE_3__ capture; int states; scalar_t__ rate_feedback_count; scalar_t__ rate_feedback_start; } ;
struct TYPE_5__ {int complete; } ;
struct TYPE_6__ {TYPE_1__ urb; } ;


 int CAPTURE_URB_COMPLETED ;
 int DISCONNECTED ;
 int ENODEV ;
 int INTF_CAPTURE ;
 int USB_CAPTURE_RUNNING ;
 int clear_bit (int ,int *) ;
 int enable_iso_interface (struct ua101*,int ) ;
 int first_capture_urb_complete ;
 int kill_stream_urbs (TYPE_3__*) ;
 int set_bit (int ,int *) ;
 int stop_usb_capture (struct ua101*) ;
 int submit_stream_urbs (struct ua101*,TYPE_3__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int start_usb_capture(struct ua101 *ua)
{
 int err;

 if (test_bit(DISCONNECTED, &ua->states))
  return -ENODEV;

 if (test_bit(USB_CAPTURE_RUNNING, &ua->states))
  return 0;

 kill_stream_urbs(&ua->capture);

 err = enable_iso_interface(ua, INTF_CAPTURE);
 if (err < 0)
  return err;

 clear_bit(CAPTURE_URB_COMPLETED, &ua->states);
 ua->capture.urbs[0]->urb.complete = first_capture_urb_complete;
 ua->rate_feedback_start = 0;
 ua->rate_feedback_count = 0;

 set_bit(USB_CAPTURE_RUNNING, &ua->states);
 err = submit_stream_urbs(ua, &ua->capture);
 if (err < 0)
  stop_usb_capture(ua);
 return err;
}
