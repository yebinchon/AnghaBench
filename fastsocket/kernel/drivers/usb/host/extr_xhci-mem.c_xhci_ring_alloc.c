
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xhci_ring {unsigned int num_segs; int type; TYPE_3__* last_seg; int first_seg; int td_list; } ;
struct xhci_hcd {int dummy; } ;
typedef int gfp_t ;
typedef enum xhci_ring_type { ____Placeholder_xhci_ring_type } xhci_ring_type ;
struct TYPE_6__ {TYPE_2__* trbs; } ;
struct TYPE_4__ {int control; } ;
struct TYPE_5__ {TYPE_1__ link; } ;


 int INIT_LIST_HEAD (int *) ;
 int LINK_TOGGLE ;
 int TRBS_PER_SEGMENT ;
 int TYPE_EVENT ;
 int cpu_to_le32 (int ) ;
 int kfree (struct xhci_ring*) ;
 struct xhci_ring* kzalloc (int,int ) ;
 int xhci_alloc_segments_for_ring (struct xhci_hcd*,int *,TYPE_3__**,unsigned int,unsigned int,int,int ) ;
 int xhci_initialize_ring_info (struct xhci_ring*,unsigned int) ;

__attribute__((used)) static struct xhci_ring *xhci_ring_alloc(struct xhci_hcd *xhci,
  unsigned int num_segs, unsigned int cycle_state,
  enum xhci_ring_type type, gfp_t flags)
{
 struct xhci_ring *ring;
 int ret;

 ring = kzalloc(sizeof *(ring), flags);
 if (!ring)
  return ((void*)0);

 ring->num_segs = num_segs;
 INIT_LIST_HEAD(&ring->td_list);
 ring->type = type;
 if (num_segs == 0)
  return ring;

 ret = xhci_alloc_segments_for_ring(xhci, &ring->first_seg,
   &ring->last_seg, num_segs, cycle_state, type, flags);
 if (ret)
  goto fail;


 if (type != TYPE_EVENT) {

  ring->last_seg->trbs[TRBS_PER_SEGMENT - 1].link.control |=
   cpu_to_le32(LINK_TOGGLE);
 }
 xhci_initialize_ring_info(ring, cycle_state);
 return ring;

fail:
 kfree(ring);
 return ((void*)0);
}
