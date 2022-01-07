
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_skip_data {int non_block; scalar_t__ skipped; scalar_t__ no_addr; } ;


 struct inode* iget5_locked (struct super_block*,unsigned long,int ,int ,struct gfs2_skip_data*) ;
 int iget_set ;
 int iget_test ;

__attribute__((used)) static struct inode *gfs2_iget(struct super_block *sb, u64 no_addr,
          int non_block)
{
 struct gfs2_skip_data data;
 unsigned long hash = (unsigned long)no_addr;

 data.no_addr = no_addr;
 data.skipped = 0;
 data.non_block = non_block;
 return iget5_locked(sb, hash, iget_test, iget_set, &data);
}
