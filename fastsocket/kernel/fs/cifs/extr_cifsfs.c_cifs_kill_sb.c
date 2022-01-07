
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct cifs_sb_info {int dummy; } ;


 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 int cifs_umount (struct cifs_sb_info*) ;
 int kill_anon_super (struct super_block*) ;

__attribute__((used)) static void cifs_kill_sb(struct super_block *sb)
{
 struct cifs_sb_info *cifs_sb = CIFS_SB(sb);
 kill_anon_super(sb);
 cifs_umount(cifs_sb);
}
