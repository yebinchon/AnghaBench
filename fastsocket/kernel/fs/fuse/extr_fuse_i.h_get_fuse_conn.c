
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct fuse_conn {int dummy; } ;


 struct fuse_conn* get_fuse_conn_super (int ) ;

__attribute__((used)) static inline struct fuse_conn *get_fuse_conn(struct inode *inode)
{
 return get_fuse_conn_super(inode->i_sb);
}
