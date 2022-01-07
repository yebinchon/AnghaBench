
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {int dummy; } ;
struct line6_dump_request {TYPE_1__* reqbufs; } ;
struct TYPE_2__ {int length; int buffer; } ;


 int line6_dump_finished (struct line6_dump_request*) ;
 int line6_invalidate_current (struct line6_dump_request*) ;
 int line6_send_raw_message_async (struct usb_line6*,int ,int ) ;

int line6_dump_request_async(struct line6_dump_request *l6dr,
        struct usb_line6 *line6, int num)
{
 int ret;
 line6_invalidate_current(l6dr);
 ret = line6_send_raw_message_async(line6, l6dr->reqbufs[num].buffer,
        l6dr->reqbufs[num].length);

 if (ret < 0)
  line6_dump_finished(l6dr);

 return ret;
}
