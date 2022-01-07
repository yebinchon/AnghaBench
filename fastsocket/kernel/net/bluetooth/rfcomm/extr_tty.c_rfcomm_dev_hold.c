
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dev {int refcnt; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void rfcomm_dev_hold(struct rfcomm_dev *dev)
{
 atomic_inc(&dev->refcnt);
}
