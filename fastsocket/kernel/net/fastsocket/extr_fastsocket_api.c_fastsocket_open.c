
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int DPRINTK (int ,char*) ;
 int EINVAL ;
 int EPRINTK_LIMIT (int ,char*) ;
 int ERR ;
 int INFO ;
 int THIS_MODULE ;
 int cpus_clear (int ) ;
 scalar_t__ fastsocket_spawn_cpu ;
 int fastsocket_spawn_cpuset ;
 int try_module_get (int ) ;

__attribute__((used)) static int fastsocket_open(struct inode *inode, struct file *filp)
{
 if (!try_module_get(THIS_MODULE)) {
  EPRINTK_LIMIT(ERR, "Add reference to fastsocket module failed\n");
  return -EINVAL;
 }

 DPRINTK(INFO, "Hold module reference\n");

 cpus_clear(fastsocket_spawn_cpuset);
 fastsocket_spawn_cpu = 0;

 return 0;
}
