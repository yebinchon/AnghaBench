
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sem; } ;
struct uwb_dev {TYPE_1__ dev; } ;


 int down (int *) ;

__attribute__((used)) static inline void uwb_dev_lock(struct uwb_dev *uwb_dev)
{
 down(&uwb_dev->dev.sem);
}
