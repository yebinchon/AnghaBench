
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iso_directory_record {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int s_rock_offset; int s_rock; } ;


 TYPE_1__* ISOFS_SB (int ) ;
 int parse_rock_ridge_inode_internal (struct iso_directory_record*,struct inode*,int) ;

int parse_rock_ridge_inode(struct iso_directory_record *de, struct inode *inode)
{
 int result = parse_rock_ridge_inode_internal(de, inode, 0);





 if ((ISOFS_SB(inode->i_sb)->s_rock_offset == -1)
     && (ISOFS_SB(inode->i_sb)->s_rock == 2)) {
  result = parse_rock_ridge_inode_internal(de, inode, 14);
 }
 return result;
}
