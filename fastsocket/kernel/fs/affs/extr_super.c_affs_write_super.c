
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; int s_dirt; } ;


 int MS_RDONLY ;
 int affs_commit_super (struct super_block*,int) ;
 int get_seconds () ;
 int lock_super (struct super_block*) ;
 int pr_debug (char*,int ,int) ;
 int unlock_super (struct super_block*) ;

__attribute__((used)) static void
affs_write_super(struct super_block *sb)
{
 int clean = 2;

 lock_super(sb);
 if (!(sb->s_flags & MS_RDONLY)) {



  affs_commit_super(sb, clean);
  sb->s_dirt = !clean;
 } else
  sb->s_dirt = 0;
 unlock_super(sb);

 pr_debug("AFFS: write_super() at %lu, clean=%d\n", get_seconds(), clean);
}
