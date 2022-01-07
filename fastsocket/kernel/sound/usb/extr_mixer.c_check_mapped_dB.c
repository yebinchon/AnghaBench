
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbmix_name_map {TYPE_1__* dB; } ;
struct usb_mixer_elem_info {int initialized; int dBmax; int dBmin; } ;
struct TYPE_2__ {int max; int min; } ;



__attribute__((used)) static inline void check_mapped_dB(const struct usbmix_name_map *p,
       struct usb_mixer_elem_info *cval)
{
 if (p && p->dB) {
  cval->dBmin = p->dB->min;
  cval->dBmax = p->dB->max;
  cval->initialized = 1;
 }
}
