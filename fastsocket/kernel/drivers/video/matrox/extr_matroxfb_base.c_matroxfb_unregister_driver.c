
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct matroxfb_driver {int (* remove ) (struct matrox_fb_info*,int ) ;int node; } ;
struct TYPE_4__ {TYPE_2__* next; } ;
struct matrox_fb_info {int drivers_count; int * drivers_data; struct matroxfb_driver** drivers; TYPE_1__ next_fb; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;


 int list_del (int *) ;
 struct matrox_fb_info* matroxfb_l (TYPE_2__*) ;
 TYPE_2__ matroxfb_list ;
 int stub1 (struct matrox_fb_info*,int ) ;

void matroxfb_unregister_driver(struct matroxfb_driver* drv) {
 struct matrox_fb_info* minfo;

 list_del(&drv->node);
 for (minfo = matroxfb_l(matroxfb_list.next);
      minfo != matroxfb_l(&matroxfb_list);
      minfo = matroxfb_l(minfo->next_fb.next)) {
  int i;

  for (i = 0; i < minfo->drivers_count; ) {
   if (minfo->drivers[i] == drv) {
    if (drv && drv->remove)
     drv->remove(minfo, minfo->drivers_data[i]);
    minfo->drivers[i] = minfo->drivers[--minfo->drivers_count];
    minfo->drivers_data[i] = minfo->drivers_data[minfo->drivers_count];
   } else
    i++;
  }
 }
}
