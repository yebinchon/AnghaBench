
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kset {int dummy; } ;
struct TYPE_9__ {struct kset* kset; } ;
struct TYPE_8__ {scalar_t__ mode; } ;
struct TYPE_7__ {TYPE_3__ attr; } ;
struct TYPE_6__ {TYPE_5__ kobj; } ;


 int kobject_set_name (TYPE_5__*,char*) ;
 int kset_register (TYPE_1__*) ;
 TYPE_3__** mlog_attr_ptrs ;
 TYPE_2__* mlog_attrs ;
 TYPE_1__ mlog_kset ;

int mlog_sys_init(struct kset *o2cb_kset)
{
 int i = 0;

 while (mlog_attrs[i].attr.mode) {
  mlog_attr_ptrs[i] = &mlog_attrs[i].attr;
  i++;
 }
 mlog_attr_ptrs[i] = ((void*)0);

 kobject_set_name(&mlog_kset.kobj, "logmask");
 mlog_kset.kobj.kset = o2cb_kset;
 return kset_register(&mlog_kset);
}
