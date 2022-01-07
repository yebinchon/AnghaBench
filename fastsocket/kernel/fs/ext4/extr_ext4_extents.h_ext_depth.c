
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int eh_depth; } ;


 TYPE_1__* ext_inode_hdr (struct inode*) ;
 unsigned short le16_to_cpu (int ) ;

__attribute__((used)) static inline unsigned short ext_depth(struct inode *inode)
{
 return le16_to_cpu(ext_inode_hdr(inode)->eh_depth);
}
