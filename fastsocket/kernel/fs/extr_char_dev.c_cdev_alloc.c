
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int kobj; int list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kobject_init (int *,int *) ;
 int ktype_cdev_dynamic ;
 struct cdev* kzalloc (int,int ) ;

struct cdev *cdev_alloc(void)
{
 struct cdev *p = kzalloc(sizeof(struct cdev), GFP_KERNEL);
 if (p) {
  INIT_LIST_HEAD(&p->list);
  kobject_init(&p->kobj, &ktype_cdev_dynamic);
 }
 return p;
}
