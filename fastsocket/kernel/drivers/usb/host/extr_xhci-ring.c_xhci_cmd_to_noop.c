
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* field; } ;
union xhci_trb {TYPE_1__ generic; } ;
typedef int u32 ;
struct xhci_segment {int dummy; } ;
struct xhci_hcd {TYPE_2__* cmd_ring; } ;
struct xhci_cd {scalar_t__ command; union xhci_trb* cmd_trb; } ;
struct TYPE_6__ {union xhci_trb* enqueue; union xhci_trb* dequeue; int deq_seg; int first_seg; } ;


 int COMP_CMD_STOP ;
 int TRB_CMD_NOOP ;
 int TRB_CYCLE ;
 int TRB_TYPE (int ) ;
 scalar_t__ TRB_TYPE_LINK_LE32 (scalar_t__) ;
 scalar_t__ cpu_to_le32 (int) ;
 struct xhci_segment* find_trb_seg (int ,union xhci_trb*,int*) ;
 int le32_to_cpu (scalar_t__) ;
 int next_trb (struct xhci_hcd*,TYPE_2__*,struct xhci_segment**,union xhci_trb**) ;
 int xhci_complete_cmd_in_cmd_wait_list (struct xhci_hcd*,scalar_t__,int ) ;
 int xhci_dbg_ring_ptrs (struct xhci_hcd*,TYPE_2__*) ;
 int xhci_debug_ring (struct xhci_hcd*,TYPE_2__*) ;
 scalar_t__ xhci_trb_virt_to_dma (int ,union xhci_trb*) ;
 int xhci_warn (struct xhci_hcd*,char*,union xhci_trb*,unsigned long long) ;

__attribute__((used)) static void xhci_cmd_to_noop(struct xhci_hcd *xhci, struct xhci_cd *cur_cd)
{
 struct xhci_segment *cur_seg;
 union xhci_trb *cmd_trb;
 u32 cycle_state;

 if (xhci->cmd_ring->dequeue == xhci->cmd_ring->enqueue)
  return;


 cur_seg = find_trb_seg(xhci->cmd_ring->first_seg,
   xhci->cmd_ring->dequeue, &cycle_state);

 if (!cur_seg) {
  xhci_warn(xhci, "Command ring mismatch, dequeue = %p %llx (dma)\n",
    xhci->cmd_ring->dequeue,
    (unsigned long long)
    xhci_trb_virt_to_dma(xhci->cmd_ring->deq_seg,
     xhci->cmd_ring->dequeue));
  xhci_debug_ring(xhci, xhci->cmd_ring);
  xhci_dbg_ring_ptrs(xhci, xhci->cmd_ring);
  return;
 }


 for (cmd_trb = xhci->cmd_ring->dequeue;
   cmd_trb != xhci->cmd_ring->enqueue;
   next_trb(xhci, xhci->cmd_ring, &cur_seg, &cmd_trb)) {

  if (TRB_TYPE_LINK_LE32(cmd_trb->generic.field[3]))
   continue;

  if (cur_cd->cmd_trb == cmd_trb) {




   if (cur_cd->command)
    xhci_complete_cmd_in_cmd_wait_list(xhci,
     cur_cd->command, COMP_CMD_STOP);


   cycle_state = le32_to_cpu(cmd_trb->generic.field[3])
    & TRB_CYCLE;


   cmd_trb->generic.field[0] = 0;
   cmd_trb->generic.field[1] = 0;
   cmd_trb->generic.field[2] = 0;
   cmd_trb->generic.field[3] = cpu_to_le32(
     TRB_TYPE(TRB_CMD_NOOP) | cycle_state);
   break;
  }
 }
}
