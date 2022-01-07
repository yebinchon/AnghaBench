
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int* setup_packet; } ;
struct r8a66597_td {int pipe; struct urb* urb; } ;
struct r8a66597 {int dummy; } ;


 int BCLR ;
 int BEMP0 ;
 int BEMPSTS ;
 int BVAL ;
 int CFIFOCTR ;
 int CFIFOSEL ;
 int CURPIPE ;
 int DCPCFG ;
 int ISEL ;
 int R8A66597_DIR ;
 int USB_ENDPOINT_DIR_MASK ;
 int enable_irq_empty (struct r8a66597*,int ) ;
 int enable_irq_nrdy (struct r8a66597*,int ) ;
 int enable_irq_ready (struct r8a66597*,int ) ;
 int pipe_start (struct r8a66597*,int ) ;
 int pipe_stop (struct r8a66597*,int ) ;
 int r8a66597_bclr (struct r8a66597*,int ,int ) ;
 int r8a66597_bset (struct r8a66597*,int ,int ) ;
 int r8a66597_mdfy (struct r8a66597*,int,int,int ) ;
 int r8a66597_pipe_toggle (struct r8a66597*,int ,int) ;
 int r8a66597_reg_wait (struct r8a66597*,int ,int,int ) ;
 int r8a66597_write (struct r8a66597*,int,int ) ;

__attribute__((used)) static void prepare_status_packet(struct r8a66597 *r8a66597,
      struct r8a66597_td *td)
{
 struct urb *urb = td->urb;

 r8a66597_pipe_toggle(r8a66597, td->pipe, 1);
 pipe_stop(r8a66597, td->pipe);

 if (urb->setup_packet[0] & USB_ENDPOINT_DIR_MASK) {
  r8a66597_bset(r8a66597, R8A66597_DIR, DCPCFG);
  r8a66597_mdfy(r8a66597, ISEL, ISEL | CURPIPE, CFIFOSEL);
  r8a66597_reg_wait(r8a66597, CFIFOSEL, CURPIPE, 0);
  r8a66597_write(r8a66597, ~BEMP0, BEMPSTS);
  r8a66597_write(r8a66597, BCLR | BVAL, CFIFOCTR);
  enable_irq_empty(r8a66597, 0);
 } else {
  r8a66597_bclr(r8a66597, R8A66597_DIR, DCPCFG);
  r8a66597_mdfy(r8a66597, 0, ISEL | CURPIPE, CFIFOSEL);
  r8a66597_reg_wait(r8a66597, CFIFOSEL, CURPIPE, 0);
  r8a66597_write(r8a66597, BCLR, CFIFOCTR);
  enable_irq_ready(r8a66597, 0);
 }
 enable_irq_nrdy(r8a66597, 0);
 pipe_start(r8a66597, td->pipe);
}
