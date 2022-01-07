
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_key {void* objectid; int type; void* offset; } ;
struct btrfs_disk_key {int objectid; int type; int offset; } ;


 void* le64_to_cpu (int ) ;

__attribute__((used)) static inline void btrfs_disk_key_to_cpu(struct btrfs_key *cpu,
      struct btrfs_disk_key *disk)
{
 cpu->offset = le64_to_cpu(disk->offset);
 cpu->type = disk->type;
 cpu->objectid = le64_to_cpu(disk->objectid);
}
