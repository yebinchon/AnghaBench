
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int nr_to_write; int sync_mode; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;


 int WB_SYNC_NONE ;
 int filemap_fdatawrite (struct address_space*) ;
 int sync_inode (struct inode*,struct writeback_control*) ;

__attribute__((used)) static int writeback_inode(struct inode *inode)
{

 int ret;
 struct address_space *mapping = inode->i_mapping;
 struct writeback_control wbc = {
        .sync_mode = WB_SYNC_NONE,
       .nr_to_write = 0,
 };




 ret = sync_inode(inode, &wbc);
 if (!ret)
        ret = filemap_fdatawrite(mapping);
 return ret;
}
