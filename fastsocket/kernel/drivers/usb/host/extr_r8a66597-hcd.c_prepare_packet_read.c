
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct urb {scalar_t__ actual_length; int transfer_buffer_length; int pipe; } ;
struct r8a66597_td {int pipenum; TYPE_1__* pipe; int maxpacket; struct urb* urb; } ;
struct r8a66597 {int dummy; } ;
struct TYPE_4__ {scalar_t__ pipetre; scalar_t__ pipetrn; } ;


 int BCLR ;
 scalar_t__ BRDYSTS ;
 scalar_t__ CFIFOCTR ;
 int CFIFOSEL ;
 int CURPIPE ;
 int DCPCFG ;
 int DIV_ROUND_UP (int ,int ) ;
 int ISEL ;
 int R8A66597_DIR ;
 int TRCLR ;
 int TRENB ;
 int pipe_irq_disable (struct r8a66597*,int) ;
 int pipe_irq_enable (struct r8a66597*,struct urb*,int) ;
 int pipe_setting (struct r8a66597*,struct r8a66597_td*) ;
 int pipe_start (struct r8a66597*,TYPE_1__*) ;
 int pipe_stop (struct r8a66597*,TYPE_1__*) ;
 int r8a66597_bclr (struct r8a66597*,int ,int ) ;
 int r8a66597_bset (struct r8a66597*,int ,scalar_t__) ;
 int r8a66597_mdfy (struct r8a66597*,int ,int,int ) ;
 int r8a66597_pipe_toggle (struct r8a66597*,TYPE_1__*,int) ;
 int r8a66597_reg_wait (struct r8a66597*,int ,int,int ) ;
 int r8a66597_write (struct r8a66597*,int,scalar_t__) ;
 scalar_t__ usb_pipecontrol (int ) ;

__attribute__((used)) static void prepare_packet_read(struct r8a66597 *r8a66597,
    struct r8a66597_td *td)
{
 struct urb *urb = td->urb;

 if (usb_pipecontrol(urb->pipe)) {
  r8a66597_bclr(r8a66597, R8A66597_DIR, DCPCFG);
  r8a66597_mdfy(r8a66597, 0, ISEL | CURPIPE, CFIFOSEL);
  r8a66597_reg_wait(r8a66597, CFIFOSEL, CURPIPE, 0);
  if (urb->actual_length == 0) {
   r8a66597_pipe_toggle(r8a66597, td->pipe, 1);
   r8a66597_write(r8a66597, BCLR, CFIFOCTR);
  }
  pipe_irq_disable(r8a66597, td->pipenum);
  pipe_start(r8a66597, td->pipe);
  pipe_irq_enable(r8a66597, urb, td->pipenum);
 } else {
  if (urb->actual_length == 0) {
   pipe_irq_disable(r8a66597, td->pipenum);
   pipe_setting(r8a66597, td);
   pipe_stop(r8a66597, td->pipe);
   r8a66597_write(r8a66597, ~(1 << td->pipenum), BRDYSTS);

   if (td->pipe->pipetre) {
    r8a66597_write(r8a66597, TRCLR,
      td->pipe->pipetre);
    r8a66597_write(r8a66597,
      DIV_ROUND_UP
        (urb->transfer_buffer_length,
         td->maxpacket),
      td->pipe->pipetrn);
    r8a66597_bset(r8a66597, TRENB,
      td->pipe->pipetre);
   }

   pipe_start(r8a66597, td->pipe);
   pipe_irq_enable(r8a66597, urb, td->pipenum);
  }
 }
}
