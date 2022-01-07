
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_root; } ;


 int d_genocide (scalar_t__) ;
 int kill_anon_super (struct super_block*) ;

void kill_litter_super(struct super_block *sb)
{
 if (sb->s_root)
  d_genocide(sb->s_root);
 kill_anon_super(sb);
}
