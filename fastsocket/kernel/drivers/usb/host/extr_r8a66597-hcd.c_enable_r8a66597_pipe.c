
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {struct r8a66597_pipe* hcpriv; } ;
struct urb {int dummy; } ;
struct r8a66597_pipe_info {size_t pipenum; } ;
struct r8a66597_pipe {struct r8a66597_pipe_info info; } ;
struct r8a66597_device {int * pipe_cnt; } ;
struct r8a66597 {int * pipe_cnt; } ;


 int R8A66597_PIPE_NO_DMA ;
 int dbg (char*) ;
 int enable_r8a66597_pipe_dma (struct r8a66597*,struct r8a66597_device*,struct r8a66597_pipe*,struct urb*) ;
 struct r8a66597_device* get_urb_to_r8a66597_dev (struct r8a66597*,struct urb*) ;
 int set_pipe_reg_addr (struct r8a66597_pipe*,int ) ;

__attribute__((used)) static void enable_r8a66597_pipe(struct r8a66597 *r8a66597, struct urb *urb,
     struct usb_host_endpoint *hep,
     struct r8a66597_pipe_info *info)
{
 struct r8a66597_device *dev = get_urb_to_r8a66597_dev(r8a66597, urb);
 struct r8a66597_pipe *pipe = hep->hcpriv;

 dbg("enable_pipe:");

 pipe->info = *info;
 set_pipe_reg_addr(pipe, R8A66597_PIPE_NO_DMA);
 r8a66597->pipe_cnt[pipe->info.pipenum]++;
 dev->pipe_cnt[pipe->info.pipenum]++;

 enable_r8a66597_pipe_dma(r8a66597, dev, pipe, urb);
}
