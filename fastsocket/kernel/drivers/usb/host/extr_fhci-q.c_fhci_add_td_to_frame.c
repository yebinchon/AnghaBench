
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td {int frame_lh; } ;
struct fhci_time_frame {int tds_list; } ;


 int list_add_tail (int *,int *) ;

void fhci_add_td_to_frame(struct fhci_time_frame *frame, struct td *td)
{
 list_add_tail(&td->frame_lh, &frame->tds_list);
}
