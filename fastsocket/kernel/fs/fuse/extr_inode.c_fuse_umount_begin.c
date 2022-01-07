
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int fuse_abort_conn (int ) ;
 int get_fuse_conn_super (struct super_block*) ;

__attribute__((used)) static void fuse_umount_begin(struct super_block *sb)
{
 fuse_abort_conn(get_fuse_conn_super(sb));
}
