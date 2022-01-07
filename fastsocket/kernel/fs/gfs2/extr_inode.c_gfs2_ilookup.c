
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_skip_data {int non_block; scalar_t__ skipped; scalar_t__ no_addr; } ;


 int iget_test ;
 struct inode* ilookup5 (struct super_block*,unsigned long,int ,struct gfs2_skip_data*) ;

struct inode *gfs2_ilookup(struct super_block *sb, u64 no_addr, int non_block)
{
 unsigned long hash = (unsigned long)no_addr;
 struct gfs2_skip_data data;

 data.no_addr = no_addr;
 data.skipped = 0;
 data.non_block = non_block;
 return ilookup5(sb, hash, iget_test, &data);
}
