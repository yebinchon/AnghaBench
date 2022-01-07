
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct fuse_conn* s_fs_info; } ;
struct fuse_conn {int dummy; } ;



__attribute__((used)) static inline struct fuse_conn *get_fuse_conn_super(struct super_block *sb)
{
 return sb->s_fs_info;
}
