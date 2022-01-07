
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; scalar_t__ s_dirt; } ;


 int MS_RDONLY ;
 int hfs_mdb_commit (struct super_block*) ;
 int lock_super (struct super_block*) ;
 int unlock_super (struct super_block*) ;

__attribute__((used)) static void hfs_write_super(struct super_block *sb)
{
 lock_super(sb);
 sb->s_dirt = 0;


 if (!(sb->s_flags & MS_RDONLY))
  hfs_mdb_commit(sb);
 unlock_super(sb);
}
