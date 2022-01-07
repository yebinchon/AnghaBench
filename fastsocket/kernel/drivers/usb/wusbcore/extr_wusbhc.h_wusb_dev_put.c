
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusb_dev {int refcnt; } ;


 int kref_put (int *,int ) ;
 int wusb_dev_destroy ;

__attribute__((used)) static inline void wusb_dev_put(struct wusb_dev *wusb_dev)
{
 kref_put(&wusb_dev->refcnt, wusb_dev_destroy);
}
