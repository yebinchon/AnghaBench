
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fuse_conn {int dummy; } ;


 int fuse_conn_kill (struct fuse_conn*) ;
 int fuse_conn_put (struct fuse_conn*) ;
 int fuse_send_destroy (struct fuse_conn*) ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;

__attribute__((used)) static void fuse_put_super(struct super_block *sb)
{
 struct fuse_conn *fc = get_fuse_conn_super(sb);

 fuse_send_destroy(fc);
 fuse_conn_kill(fc);
 fuse_conn_put(fc);
}
