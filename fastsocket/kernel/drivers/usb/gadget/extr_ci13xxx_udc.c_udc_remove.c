
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct ci13xxx {TYPE_1__ gadget; } ;


 struct ci13xxx* _udc ;
 int dbg_remove_files (int *) ;
 int device_unregister (int *) ;
 int err (char*) ;
 int kfree (struct ci13xxx*) ;

__attribute__((used)) static void udc_remove(void)
{
 struct ci13xxx *udc = _udc;

 if (udc == ((void*)0)) {
  err("EINVAL");
  return;
 }




 device_unregister(&udc->gadget.dev);

 kfree(udc);
 _udc = ((void*)0);
}
