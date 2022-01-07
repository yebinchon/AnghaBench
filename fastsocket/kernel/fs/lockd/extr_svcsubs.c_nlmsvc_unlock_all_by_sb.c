
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int EIO ;
 int nlm_traverse_files (struct super_block*,int ,int ) ;
 int nlmsvc_always_match ;
 int nlmsvc_match_sb ;

int
nlmsvc_unlock_all_by_sb(struct super_block *sb)
{
 int ret;

 ret = nlm_traverse_files(sb, nlmsvc_always_match, nlmsvc_match_sb);
 return ret ? -EIO : 0;
}
