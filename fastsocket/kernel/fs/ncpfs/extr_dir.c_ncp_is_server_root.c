
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; } ;
struct TYPE_4__ {TYPE_1__* s_root; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int NCP_SERVER (struct inode*) ;
 int ncp_single_volume (int ) ;

__attribute__((used)) static inline int ncp_is_server_root(struct inode *inode)
{
 return (!ncp_single_volume(NCP_SERVER(inode)) &&
  inode == inode->i_sb->s_root->d_inode);
}
