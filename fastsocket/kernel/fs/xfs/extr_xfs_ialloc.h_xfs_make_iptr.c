
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_dinode {int dummy; } ;
typedef struct xfs_dinode xfs_dinode_t ;
struct TYPE_2__ {int sb_inodelog; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;


 scalar_t__ xfs_buf_offset (struct xfs_buf*,int) ;

__attribute__((used)) static inline struct xfs_dinode *
xfs_make_iptr(struct xfs_mount *mp, struct xfs_buf *b, int o)
{
 return (xfs_dinode_t *)
  (xfs_buf_offset(b, o << (mp)->m_sb.sb_inodelog));
}
