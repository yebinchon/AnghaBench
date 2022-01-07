
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_hcd {scalar_t__ current_frame; scalar_t__ last_frame; int lock; int td_list; int sie; int urb_count; int endpoint_disable; } ;


 int c67x00_all_tds_processed (struct c67x00_hcd*) ;
 int c67x00_check_td_list (struct c67x00_hcd*) ;
 int c67x00_fill_frame (struct c67x00_hcd*) ;
 scalar_t__ c67x00_get_current_frame_number (struct c67x00_hcd*) ;
 int c67x00_ll_hpi_disable_sofeop (int ) ;
 int c67x00_send_frame (struct c67x00_hcd*) ;
 int complete (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void c67x00_do_work(struct c67x00_hcd *c67x00)
{
 spin_lock(&c67x00->lock);

 if (!c67x00_all_tds_processed(c67x00))
  goto out;

 c67x00_check_td_list(c67x00);



 complete(&c67x00->endpoint_disable);

 if (!list_empty(&c67x00->td_list))
  goto out;

 c67x00->current_frame = c67x00_get_current_frame_number(c67x00);
 if (c67x00->current_frame == c67x00->last_frame)
  goto out;
 c67x00->last_frame = c67x00->current_frame;


 if (!c67x00->urb_count) {
  c67x00_ll_hpi_disable_sofeop(c67x00->sie);
  goto out;
 }

 c67x00_fill_frame(c67x00);
 if (!list_empty(&c67x00->td_list))

  c67x00_send_frame(c67x00);

 out:
 spin_unlock(&c67x00->lock);
}
