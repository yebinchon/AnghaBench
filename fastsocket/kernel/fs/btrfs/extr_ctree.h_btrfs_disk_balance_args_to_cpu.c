
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_disk_balance_args {int flags; int target; int vend; int vstart; int pend; int pstart; int devid; int usage; int profiles; } ;
struct btrfs_balance_args {void* flags; void* target; void* vend; void* vstart; void* pend; void* pstart; void* devid; void* usage; void* profiles; } ;


 void* le64_to_cpu (int ) ;
 int memset (struct btrfs_balance_args*,int ,int) ;

__attribute__((used)) static inline void
btrfs_disk_balance_args_to_cpu(struct btrfs_balance_args *cpu,
          struct btrfs_disk_balance_args *disk)
{
 memset(cpu, 0, sizeof(*cpu));

 cpu->profiles = le64_to_cpu(disk->profiles);
 cpu->usage = le64_to_cpu(disk->usage);
 cpu->devid = le64_to_cpu(disk->devid);
 cpu->pstart = le64_to_cpu(disk->pstart);
 cpu->pend = le64_to_cpu(disk->pend);
 cpu->vstart = le64_to_cpu(disk->vstart);
 cpu->vend = le64_to_cpu(disk->vend);
 cpu->target = le64_to_cpu(disk->target);
 cpu->flags = le64_to_cpu(disk->flags);
}
