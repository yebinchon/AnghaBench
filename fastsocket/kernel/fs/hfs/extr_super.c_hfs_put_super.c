
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_dirt; } ;


 int hfs_mdb_close (struct super_block*) ;
 int hfs_mdb_put (struct super_block*) ;
 int hfs_write_super (struct super_block*) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static void hfs_put_super(struct super_block *sb)
{
 lock_kernel();

 if (sb->s_dirt)
  hfs_write_super(sb);
 hfs_mdb_close(sb);

 hfs_mdb_put(sb);

 unlock_kernel();
}
