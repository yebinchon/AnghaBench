
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_fs_info; } ;
struct autofs_sb_info {TYPE_1__* symlink; int symlink_bitmap; int oz_pgrp; int catatonic; } ;
struct TYPE_2__ {int data; } ;


 unsigned int AUTOFS_MAX_SYMLINKS ;
 int DPRINTK (char*) ;
 int autofs_catatonic_mode (struct autofs_sb_info*) ;
 int autofs_hash_nuke (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs_sbi (struct super_block*) ;
 int kfree (int ) ;
 int kill_anon_super (struct super_block*) ;
 int put_pid (int ) ;
 scalar_t__ test_bit (unsigned int,int ) ;

void autofs_kill_sb(struct super_block *sb)
{
 struct autofs_sb_info *sbi = autofs_sbi(sb);
 unsigned int n;







 if (!sbi)
  goto out_kill_sb;

 if (!sbi->catatonic)
  autofs_catatonic_mode(sbi);

 put_pid(sbi->oz_pgrp);

 autofs_hash_nuke(sbi);
 for (n = 0; n < AUTOFS_MAX_SYMLINKS; n++) {
  if (test_bit(n, sbi->symlink_bitmap))
   kfree(sbi->symlink[n].data);
 }

 kfree(sb->s_fs_info);

out_kill_sb:
 DPRINTK(("autofs: shutting down\n"));
 kill_anon_super(sb);
}
