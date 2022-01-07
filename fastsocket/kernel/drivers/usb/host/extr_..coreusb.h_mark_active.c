
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int is_active; } ;



__attribute__((used)) static inline void mark_active(struct usb_interface *f)
{
 f->is_active = 1;
}
