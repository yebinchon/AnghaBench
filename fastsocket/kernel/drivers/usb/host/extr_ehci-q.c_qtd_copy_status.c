
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct urb {int pipe; TYPE_1__* dev; int unlinked; int actual_length; } ;
struct ehci_hcd {int dummy; } ;
struct TYPE_2__ {int devpath; } ;


 int ECOMM ;
 int EINPROGRESS ;
 int ENOSR ;
 int EOVERFLOW ;
 int EPIPE ;
 int EPROTO ;
 int EREMOTEIO ;
 int IS_SHORT_READ (int) ;
 scalar_t__ QTD_CERR (int) ;
 size_t QTD_LENGTH (int) ;
 int QTD_PID (int) ;
 int QTD_STS_BABBLE ;
 int QTD_STS_DBE ;
 int QTD_STS_HALT ;
 int QTD_STS_MMF ;
 int QTD_STS_XACT ;
 int ehci_dbg (struct ehci_hcd*,char*,int ,int ,char*) ;
 int ehci_vdbg (struct ehci_hcd*,char*,int ,int ,char*,int,int) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int ) ;
 int usb_pipedevice (int ) ;
 int usb_pipeendpoint (int ) ;
 scalar_t__ usb_pipein (int ) ;

__attribute__((used)) static int qtd_copy_status (
 struct ehci_hcd *ehci,
 struct urb *urb,
 size_t length,
 u32 token
)
{
 int status = -EINPROGRESS;


 if (likely (QTD_PID (token) != 2))
  urb->actual_length += length - QTD_LENGTH (token);


 if (unlikely(urb->unlinked))
  return status;


 if (unlikely (IS_SHORT_READ (token)))
  status = -EREMOTEIO;


 if (token & QTD_STS_HALT) {
  if (token & QTD_STS_BABBLE) {

   status = -EOVERFLOW;

  } else if (QTD_CERR(token)) {
   status = -EPIPE;





  } else if (token & QTD_STS_MMF) {

   status = -EPROTO;
  } else if (token & QTD_STS_DBE) {
   status = (QTD_PID (token) == 1)
    ? -ENOSR
    : -ECOMM;
  } else if (token & QTD_STS_XACT) {

   ehci_dbg(ehci, "devpath %s ep%d%s 3strikes\n",
    urb->dev->devpath,
    usb_pipeendpoint(urb->pipe),
    usb_pipein(urb->pipe) ? "in" : "out");
   status = -EPROTO;
  } else {
   status = -EPROTO;
  }

  ehci_vdbg (ehci,
   "dev%d ep%d%s qtd token %08x --> status %d\n",
   usb_pipedevice (urb->pipe),
   usb_pipeendpoint (urb->pipe),
   usb_pipein (urb->pipe) ? "in" : "out",
   token, status);
 }

 return status;
}
