
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_dev {char const* type; int lecs; int local; int lock; int link_rate; int signal; } ;


 int ATM_OC3_PCR ;
 int ATM_PHY_SIG_UNKNOWN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct atm_dev* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct atm_dev *__alloc_atm_dev(const char *type)
{
 struct atm_dev *dev;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);
 dev->type = type;
 dev->signal = ATM_PHY_SIG_UNKNOWN;
 dev->link_rate = ATM_OC3_PCR;
 spin_lock_init(&dev->lock);
 INIT_LIST_HEAD(&dev->local);
 INIT_LIST_HEAD(&dev->lecs);

 return dev;
}
