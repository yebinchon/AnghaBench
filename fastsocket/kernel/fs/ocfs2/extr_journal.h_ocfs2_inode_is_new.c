
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int ip_flags; } ;


 int INODE_CACHE (struct inode*) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_SYSTEM_FILE ;
 int ocfs2_ci_is_new (int ) ;

__attribute__((used)) static inline int ocfs2_inode_is_new(struct inode *inode)
{



 if (OCFS2_I(inode)->ip_flags & OCFS2_INODE_SYSTEM_FILE)
  return 0;

 return ocfs2_ci_is_new(INODE_CACHE(inode));
}
