
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;


 int ENOMEM ;
 int fs_kobj ;
 TYPE_1__* kset_create_and_add (char*,int *,int ) ;
 int kset_unregister (TYPE_1__*) ;
 int ocfs2_attr_group ;
 TYPE_1__* ocfs2_kset ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int ocfs2_sysfs_init(void)
{
 int ret;

 ocfs2_kset = kset_create_and_add("ocfs2", ((void*)0), fs_kobj);
 if (!ocfs2_kset)
  return -ENOMEM;

 ret = sysfs_create_group(&ocfs2_kset->kobj, &ocfs2_attr_group);
 if (ret)
  goto error;

 return 0;

error:
 kset_unregister(ocfs2_kset);
 return ret;
}
