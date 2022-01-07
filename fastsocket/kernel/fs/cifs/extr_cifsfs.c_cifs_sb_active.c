
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_active; } ;
struct cifs_sb_info {int active; } ;


 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 int atomic_inc (int *) ;
 int atomic_inc_return (int *) ;

void
cifs_sb_active(struct super_block *sb)
{
 struct cifs_sb_info *server = CIFS_SB(sb);

 if (atomic_inc_return(&server->active) == 1)
  atomic_inc(&sb->s_active);
}
