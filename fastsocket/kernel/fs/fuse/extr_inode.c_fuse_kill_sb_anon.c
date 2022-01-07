
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fuse_conn {int killsb; int * sb; } ;


 int down_write (int *) ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;
 int kill_anon_super (struct super_block*) ;
 int up_write (int *) ;

__attribute__((used)) static void fuse_kill_sb_anon(struct super_block *sb)
{
 struct fuse_conn *fc = get_fuse_conn_super(sb);

 if (fc) {
  down_write(&fc->killsb);
  fc->sb = ((void*)0);
  up_write(&fc->killsb);
 }

 kill_anon_super(sb);
}
