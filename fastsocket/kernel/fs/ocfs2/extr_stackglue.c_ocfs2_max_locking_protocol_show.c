
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int pv_major; int pv_minor; } ;
struct TYPE_4__ {TYPE_1__ lp_max_version; } ;


 int PAGE_SIZE ;
 TYPE_2__* lproto ;
 int ocfs2_stack_lock ;
 int snprintf (char*,int ,char*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t ocfs2_max_locking_protocol_show(struct kobject *kobj,
            struct kobj_attribute *attr,
            char *buf)
{
 ssize_t ret = 0;

 spin_lock(&ocfs2_stack_lock);
 if (lproto)
  ret = snprintf(buf, PAGE_SIZE, "%u.%u\n",
          lproto->lp_max_version.pv_major,
          lproto->lp_max_version.pv_minor);
 spin_unlock(&ocfs2_stack_lock);

 return ret;
}
