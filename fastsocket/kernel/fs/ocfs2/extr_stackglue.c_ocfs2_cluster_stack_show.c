
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* cluster_stack_name ;
 int ocfs2_stack_lock ;
 int snprintf (char*,int ,char*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t ocfs2_cluster_stack_show(struct kobject *kobj,
     struct kobj_attribute *attr,
     char *buf)
{
 ssize_t ret;
 spin_lock(&ocfs2_stack_lock);
 ret = snprintf(buf, PAGE_SIZE, "%s\n", cluster_stack_name);
 spin_unlock(&ocfs2_stack_lock);

 return ret;
}
