
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usb_host_endpoint {struct r8a66597_pipe* hcpriv; } ;
struct urb {int pipe; } ;
struct TYPE_2__ {int pipenum; } ;
struct r8a66597_pipe {TYPE_1__ info; } ;


 scalar_t__ usb_pipeendpoint (int ) ;

__attribute__((used)) static u16 r8a66597_get_pipenum(struct urb *urb, struct usb_host_endpoint *hep)
{
 struct r8a66597_pipe *pipe = hep->hcpriv;

 if (usb_pipeendpoint(urb->pipe) == 0)
  return 0;
 else
  return pipe->info.pipenum;
}
