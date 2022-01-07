
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct dev_exception_item {short type; short access; void* minor; void* major; } ;
struct dev_cgroup {int dummy; } ;
typedef int ex ;


 int EPERM ;
 int current ;
 int may_access (struct dev_cgroup*,struct dev_exception_item*) ;
 int memset (struct dev_exception_item*,int ,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct dev_cgroup* task_devcgroup (int ) ;

__attribute__((used)) static int __devcgroup_check_permission(short type, u32 major, u32 minor,
            short access)
{
 struct dev_cgroup *dev_cgroup;
 struct dev_exception_item ex;
 int rc;

 memset(&ex, 0, sizeof(ex));
 ex.type = type;
 ex.major = major;
 ex.minor = minor;
 ex.access = access;

 rcu_read_lock();
 dev_cgroup = task_devcgroup(current);
 rc = may_access(dev_cgroup, &ex);
 rcu_read_unlock();

 if (!rc)
  return -EPERM;

 return 0;
}
