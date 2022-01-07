
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {scalar_t__ is_active; } ;



__attribute__((used)) static inline void mark_quiesced(struct usb_interface *f)
{
 f->is_active = 0;
}
