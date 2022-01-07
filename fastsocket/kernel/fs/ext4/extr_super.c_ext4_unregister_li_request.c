
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {int s_li_request; } ;
struct TYPE_3__ {int li_list_mtx; } ;


 TYPE_2__* EXT4_SB (struct super_block*) ;
 TYPE_1__* ext4_li_info ;
 int ext4_li_mtx ;
 int ext4_remove_li_request (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ext4_unregister_li_request(struct super_block *sb)
{
 mutex_lock(&ext4_li_mtx);
 if (!ext4_li_info) {
  mutex_unlock(&ext4_li_mtx);
  return;
 }

 mutex_lock(&ext4_li_info->li_list_mtx);
 ext4_remove_li_request(EXT4_SB(sb)->s_li_request);
 mutex_unlock(&ext4_li_info->li_list_mtx);
 mutex_unlock(&ext4_li_mtx);
}
