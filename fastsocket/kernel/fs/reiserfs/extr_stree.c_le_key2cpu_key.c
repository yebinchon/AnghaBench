
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_key {int k_objectid; int k_dir_id; } ;
struct TYPE_2__ {int k_type; int k_offset; void* k_objectid; void* k_dir_id; } ;
struct cpu_key {int version; TYPE_1__ on_disk_key; } ;


 void* le32_to_cpu (int ) ;
 int le_key_k_offset (int,struct reiserfs_key const*) ;
 int le_key_k_type (int,struct reiserfs_key const*) ;
 int le_key_version (struct reiserfs_key const*) ;

inline void le_key2cpu_key(struct cpu_key *to, const struct reiserfs_key *from)
{
 int version;
 to->on_disk_key.k_dir_id = le32_to_cpu(from->k_dir_id);
 to->on_disk_key.k_objectid = le32_to_cpu(from->k_objectid);


 version = le_key_version(from);
 to->version = version;
 to->on_disk_key.k_offset = le_key_k_offset(version, from);
 to->on_disk_key.k_type = le_key_k_type(version, from);
}
