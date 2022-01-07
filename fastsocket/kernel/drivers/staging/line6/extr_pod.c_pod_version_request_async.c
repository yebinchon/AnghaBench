
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int buffer_versionreq; int line6; } ;
typedef int pod_request_version ;


 int line6_send_raw_message_async (int *,int ,int) ;

__attribute__((used)) static int pod_version_request_async(struct usb_line6_pod *pod)
{
 return line6_send_raw_message_async(&pod->line6, pod->buffer_versionreq, sizeof(pod_request_version));
}
