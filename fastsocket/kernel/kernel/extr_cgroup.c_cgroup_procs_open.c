
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CGROUP_FILE_PROCS ;
 int cgroup_pidlist_open (struct file*,int ) ;

__attribute__((used)) static int cgroup_procs_open(struct inode *unused, struct file *file)
{
 return cgroup_pidlist_open(file, CGROUP_FILE_PROCS);
}
