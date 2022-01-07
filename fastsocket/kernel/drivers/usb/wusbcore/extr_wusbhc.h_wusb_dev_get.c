
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusb_dev {int refcnt; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct wusb_dev *wusb_dev_get(struct wusb_dev *wusb_dev)
{
 kref_get(&wusb_dev->refcnt);
 return wusb_dev;
}
