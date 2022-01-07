
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devname_cache {scalar_t__ device; char* devname; int rcu; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ dev_t ;


 int CACHE_SIZE_BITS ;
 int GFP_KERNEL ;
 int __bdevname (scalar_t__,char*) ;
 int bdevname (struct block_device*,char*) ;
 struct block_device* bdget (scalar_t__) ;
 int bdput (struct block_device*) ;
 int call_rcu (int *,int ) ;
 struct devname_cache** devcache ;
 int devname_cache_lock ;
 int free_devcache ;
 int hash_32 (scalar_t__,int ) ;
 int kfree (struct devname_cache*) ;
 struct devname_cache* kmalloc (int,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

const char *jbd2_dev_to_name(dev_t device)
{
 int i = hash_32(device, CACHE_SIZE_BITS);
 char *ret;
 struct block_device *bd;
 static struct devname_cache *new_dev;

 rcu_read_lock();
 if (devcache[i] && devcache[i]->device == device) {
  ret = devcache[i]->devname;
  rcu_read_unlock();
  return ret;
 }
 rcu_read_unlock();

 new_dev = kmalloc(sizeof(struct devname_cache), GFP_KERNEL);
 if (!new_dev)
  return "NODEV-ALLOCFAILURE";
 spin_lock(&devname_cache_lock);
 if (devcache[i]) {
  if (devcache[i]->device == device) {
   kfree(new_dev);
   ret = devcache[i]->devname;
   spin_unlock(&devname_cache_lock);
   return ret;
  }
  call_rcu(&devcache[i]->rcu, free_devcache);
 }
 devcache[i] = new_dev;
 devcache[i]->device = device;
 bd = bdget(device);
 if (bd) {
  bdevname(bd, devcache[i]->devname);
  bdput(bd);
 } else
  __bdevname(device, devcache[i]->devname);
 ret = devcache[i]->devname;
 spin_unlock(&devname_cache_lock);
 return ret;
}
