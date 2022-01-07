
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 int EINVAL ;
 scalar_t__ STATID ;
 scalar_t__ VINT_EN ;
 TYPE_1__* ca91cx42_bridge ;
 int iack_queue ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vme_int ;
 int wait_event_interruptible (int ,int ) ;

int ca91cx42_generate_irq(int level, int statid)
{
 u32 tmp;


 if (statid & 1)
  return -EINVAL;

 mutex_lock(&(vme_int));

 tmp = ioread32(ca91cx42_bridge->base + VINT_EN);


 iowrite32(statid << 24, ca91cx42_bridge->base + STATID);


 tmp = tmp | (1 << (level + 24));
 iowrite32(tmp, ca91cx42_bridge->base + VINT_EN);


 wait_event_interruptible(iack_queue, 0);


 tmp = ioread32(ca91cx42_bridge->base + VINT_EN);
 tmp = tmp & ~(1 << (level + 24));
 iowrite32(tmp, ca91cx42_bridge->base + VINT_EN);

 mutex_unlock(&(vme_int));

 return 0;
}
