
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {scalar_t__ type; struct dn_dev* dn_ptr; } ;
struct dn_dev_parms {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ (* up ) (struct net_device*) ;} ;
struct dn_dev {TYPE_1__ parms; int neigh_parms; int uptime; int timer; struct net_device* dev; } ;


 int DN_DEV_LIST_SIZE ;
 int ENOBUFS ;
 int ENODEV ;
 int GFP_ATOMIC ;
 struct dn_dev_parms* dn_dev_list ;
 int dn_dev_set_timer (struct net_device*) ;
 int dn_dev_sysctl_register (struct net_device*,TYPE_1__*) ;
 int dn_neigh_table ;
 int init_timer (int *) ;
 int jiffies ;
 int kfree (struct dn_dev*) ;
 struct dn_dev* kzalloc (int,int ) ;
 int memcpy (TYPE_1__*,struct dn_dev_parms*,int) ;
 int neigh_parms_alloc (struct net_device*,int *) ;
 int neigh_parms_release (int *,int ) ;
 int smp_wmb () ;
 scalar_t__ stub1 (struct net_device*) ;

__attribute__((used)) static struct dn_dev *dn_dev_create(struct net_device *dev, int *err)
{
 int i;
 struct dn_dev_parms *p = dn_dev_list;
 struct dn_dev *dn_db;

 for(i = 0; i < DN_DEV_LIST_SIZE; i++, p++) {
  if (p->type == dev->type)
   break;
 }

 *err = -ENODEV;
 if (i == DN_DEV_LIST_SIZE)
  return ((void*)0);

 *err = -ENOBUFS;
 if ((dn_db = kzalloc(sizeof(struct dn_dev), GFP_ATOMIC)) == ((void*)0))
  return ((void*)0);

 memcpy(&dn_db->parms, p, sizeof(struct dn_dev_parms));
 smp_wmb();
 dev->dn_ptr = dn_db;
 dn_db->dev = dev;
 init_timer(&dn_db->timer);

 dn_db->uptime = jiffies;

 dn_db->neigh_parms = neigh_parms_alloc(dev, &dn_neigh_table);
 if (!dn_db->neigh_parms) {
  dev->dn_ptr = ((void*)0);
  kfree(dn_db);
  return ((void*)0);
 }

 if (dn_db->parms.up) {
  if (dn_db->parms.up(dev) < 0) {
   neigh_parms_release(&dn_neigh_table, dn_db->neigh_parms);
   dev->dn_ptr = ((void*)0);
   kfree(dn_db);
   return ((void*)0);
  }
 }

 dn_dev_sysctl_register(dev, &dn_db->parms);

 dn_dev_set_timer(dev);

 *err = 0;
 return dn_db;
}
