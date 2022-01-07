
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int is_active; } ;



__attribute__((used)) static inline int is_active(const struct usb_interface *f)
{
 return f->is_active;
}
