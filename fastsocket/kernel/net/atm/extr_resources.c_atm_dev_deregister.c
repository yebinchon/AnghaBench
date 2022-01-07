
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_dev {int dev_list; int flags; } ;


 int ATM_DF_REMOVED ;
 int BUG_ON (int ) ;
 int atm_dev_mutex ;
 int atm_dev_put (struct atm_dev*) ;
 int atm_dev_release_vccs (struct atm_dev*) ;
 int atm_proc_dev_deregister (struct atm_dev*) ;
 int atm_unregister_sysfs (struct atm_dev*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void atm_dev_deregister(struct atm_dev *dev)
{
 BUG_ON(test_bit(ATM_DF_REMOVED, &dev->flags));
 set_bit(ATM_DF_REMOVED, &dev->flags);






 mutex_lock(&atm_dev_mutex);
 list_del(&dev->dev_list);
 mutex_unlock(&atm_dev_mutex);

 atm_dev_release_vccs(dev);
 atm_unregister_sysfs(dev);
 atm_proc_dev_deregister(dev);

 atm_dev_put(dev);
}
