
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {struct hwarc* priv; } ;
struct hwarc {scalar_t__ rd_buffer; int neep_urb; } ;


 int free_page (unsigned long) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void hwarc_neep_release(struct uwb_rc *rc)
{
 struct hwarc *hwarc = rc->priv;

 usb_kill_urb(hwarc->neep_urb);
 usb_free_urb(hwarc->neep_urb);
 free_page((unsigned long)hwarc->rd_buffer);
}
