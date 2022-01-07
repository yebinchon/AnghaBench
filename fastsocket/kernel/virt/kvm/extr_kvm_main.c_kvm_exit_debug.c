
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_stats_debugfs_item {int dentry; scalar_t__ name; } ;


 struct kvm_stats_debugfs_item* debugfs_entries ;
 int debugfs_remove (int ) ;
 int kvm_debugfs_dir ;

__attribute__((used)) static void kvm_exit_debug(void)
{
 struct kvm_stats_debugfs_item *p;

 for (p = debugfs_entries; p->name; ++p)
  debugfs_remove(p->dentry);
 debugfs_remove(kvm_debugfs_dir);
}
