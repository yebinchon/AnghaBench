
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* next; } ;
struct matroxfb_driver {void* (* probe ) (struct matrox_fb_info*) ;TYPE_1__ node; } ;
struct matrox_fb_info {int drivers_count; struct matroxfb_driver** drivers; void** drivers_data; int next_fb; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;


 int MATROXFB_MAX_FB_DRIVERS ;
 int list_add (int *,int *) ;
 struct matroxfb_driver* matroxfb_driver_l (TYPE_2__*) ;
 TYPE_2__ matroxfb_driver_list ;
 int matroxfb_list ;
 void* stub1 (struct matrox_fb_info*) ;

__attribute__((used)) static void matroxfb_register_device(struct matrox_fb_info* minfo) {
 struct matroxfb_driver* drv;
 int i = 0;
 list_add(&minfo->next_fb, &matroxfb_list);
 for (drv = matroxfb_driver_l(matroxfb_driver_list.next);
      drv != matroxfb_driver_l(&matroxfb_driver_list);
      drv = matroxfb_driver_l(drv->node.next)) {
  if (drv && drv->probe) {
   void *p = drv->probe(minfo);
   if (p) {
    minfo->drivers_data[i] = p;
    minfo->drivers[i++] = drv;
    if (i == MATROXFB_MAX_FB_DRIVERS)
     break;
   }
  }
 }
 minfo->drivers_count = i;
}
