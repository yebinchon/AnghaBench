
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dev {int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int rfcomm_dev_destruct (struct rfcomm_dev*) ;

__attribute__((used)) static inline void rfcomm_dev_put(struct rfcomm_dev *dev)
{







 if (atomic_dec_and_test(&dev->refcnt))
  rfcomm_dev_destruct(dev);
}
