
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* sp_name; } ;


 int E2BIG ;
 int PAGE_SIZE ;
 TYPE_1__* active_stack ;
 int ocfs2_stack_lock ;
 int snprintf (char*,int ,char*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t ocfs2_active_cluster_plugin_show(struct kobject *kobj,
      struct kobj_attribute *attr,
      char *buf)
{
 ssize_t ret = 0;

 spin_lock(&ocfs2_stack_lock);
 if (active_stack) {
  ret = snprintf(buf, PAGE_SIZE, "%s\n",
          active_stack->sp_name);
  if (ret == PAGE_SIZE)
   ret = -E2BIG;
 }
 spin_unlock(&ocfs2_stack_lock);

 return ret;
}
