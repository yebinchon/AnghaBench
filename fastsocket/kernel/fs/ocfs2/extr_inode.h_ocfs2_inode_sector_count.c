
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
typedef int blkcnt_t ;
struct TYPE_4__ {int ip_clusters; } ;
struct TYPE_3__ {int s_clustersize_bits; } ;


 TYPE_2__* OCFS2_I (struct inode*) ;
 TYPE_1__* OCFS2_SB (int ) ;

__attribute__((used)) static inline blkcnt_t ocfs2_inode_sector_count(struct inode *inode)
{
 int c_to_s_bits = OCFS2_SB(inode->i_sb)->s_clustersize_bits - 9;

 return (blkcnt_t)(OCFS2_I(inode)->ip_clusters << c_to_s_bits);
}
