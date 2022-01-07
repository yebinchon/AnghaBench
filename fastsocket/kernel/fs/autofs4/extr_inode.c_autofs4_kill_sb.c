
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;
struct autofs_sb_info {int dummy; } ;


 int DPRINTK (char*) ;
 int autofs4_catatonic_mode (struct autofs_sb_info*) ;
 int autofs4_force_release (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs4_sbi (struct super_block*) ;
 int kfree (struct autofs_sb_info*) ;
 int kill_anon_super (struct super_block*) ;

void autofs4_kill_sb(struct super_block *sb)
{
 struct autofs_sb_info *sbi = autofs4_sbi(sb);







 if (!sbi)
  goto out_kill_sb;


 autofs4_catatonic_mode(sbi);


 autofs4_force_release(sbi);

 sb->s_fs_info = ((void*)0);
 kfree(sbi);

out_kill_sb:
 DPRINTK("shutting down");
 kill_anon_super(sb);
}
