
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int b_blocknr; } ;
typedef int sector_t ;
typedef int pgoff_t ;


 int BUG_ON (int) ;
 int ENODATA ;
 int ext2_get_block (struct inode*,int ,struct buffer_head*,int) ;
 int memset (struct buffer_head*,int ,int) ;

__attribute__((used)) static inline int
__ext2_get_block(struct inode *inode, pgoff_t pgoff, int create,
     sector_t *result)
{
 struct buffer_head tmp;
 int rc;

 memset(&tmp, 0, sizeof(struct buffer_head));
 rc = ext2_get_block(inode, pgoff, &tmp, create);
 *result = tmp.b_blocknr;


 if (!tmp.b_blocknr && !rc) {
  BUG_ON(create);
  rc = -ENODATA;
 }

 return rc;
}
