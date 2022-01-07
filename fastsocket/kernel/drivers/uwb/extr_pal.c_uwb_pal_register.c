
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct TYPE_6__ {int mutex; TYPE_1__ dev; } ;
struct uwb_rc {TYPE_3__ uwb_dev; int pals; } ;
struct uwb_pal {char* name; int node; int debugfs_dir; TYPE_2__* device; struct uwb_rc* rc; } ;
struct TYPE_5__ {int kobj; } ;


 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;
 int uwb_dbg_create_pal_dir (struct uwb_pal*) ;

int uwb_pal_register(struct uwb_pal *pal)
{
 struct uwb_rc *rc = pal->rc;
 int ret;

 if (pal->device) {
  ret = sysfs_create_link(&pal->device->kobj,
     &rc->uwb_dev.dev.kobj, "uwb_rc");
  if (ret < 0)
   return ret;
  ret = sysfs_create_link(&rc->uwb_dev.dev.kobj,
     &pal->device->kobj, pal->name);
  if (ret < 0) {
   sysfs_remove_link(&pal->device->kobj, "uwb_rc");
   return ret;
  }
 }

 pal->debugfs_dir = uwb_dbg_create_pal_dir(pal);

 mutex_lock(&rc->uwb_dev.mutex);
 list_add(&pal->node, &rc->pals);
 mutex_unlock(&rc->uwb_dev.mutex);

 return 0;
}
