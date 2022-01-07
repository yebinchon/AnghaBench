
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; struct api_context* context; } ;
struct api_context {int done; int status; } ;


 int complete (int *) ;

__attribute__((used)) static void usb_api_blocking_completion(struct urb *urb)
{
 struct api_context *ctx = urb->context;

 ctx->status = urb->status;
 complete(&ctx->done);
}
