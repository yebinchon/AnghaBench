
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* k_objectid; void* k_dir_id; } ;
struct TYPE_8__ {TYPE_1__ on_disk_key; int version; } ;
struct reiserfs_dir_entry {int de_entry_num; TYPE_3__ de_entry_key; TYPE_5__* de_ih; struct reiserfs_de_head* de_deh; } ;
struct reiserfs_de_head {int dummy; } ;
struct TYPE_7__ {int k_objectid; int k_dir_id; } ;
struct TYPE_9__ {TYPE_2__ ih_key; } ;


 int BUG_ON (int) ;
 int KEY_FORMAT_3_5 ;
 int TYPE_DIRENTRY ;
 int deh_offset (struct reiserfs_de_head*) ;
 scalar_t__ ih_entry_count (TYPE_5__*) ;
 void* le32_to_cpu (int ) ;
 int set_cpu_key_k_offset (TYPE_3__*,int ) ;
 int set_cpu_key_k_type (TYPE_3__*,int ) ;

__attribute__((used)) static inline void store_de_entry_key(struct reiserfs_dir_entry *de)
{
 struct reiserfs_de_head *deh = de->de_deh + de->de_entry_num;

 BUG_ON(de->de_entry_num >= ih_entry_count(de->de_ih));


 de->de_entry_key.version = KEY_FORMAT_3_5;
 de->de_entry_key.on_disk_key.k_dir_id =
     le32_to_cpu(de->de_ih->ih_key.k_dir_id);
 de->de_entry_key.on_disk_key.k_objectid =
     le32_to_cpu(de->de_ih->ih_key.k_objectid);
 set_cpu_key_k_offset(&(de->de_entry_key), deh_offset(deh));
 set_cpu_key_k_type(&(de->de_entry_key), TYPE_DIRENTRY);
}
