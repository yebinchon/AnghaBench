
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pnfs_layout_segment {TYPE_1__* pls_layout; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int layout; } ;
struct TYPE_7__ {TYPE_2__* pnfs_curr_ld; } ;
struct TYPE_6__ {int (* free_lseg ) (struct pnfs_layout_segment*) ;} ;
struct TYPE_5__ {struct inode* plh_inode; } ;


 TYPE_4__* NFS_I (struct inode*) ;
 TYPE_3__* NFS_SERVER (struct inode*) ;
 int pnfs_put_layout_hdr (int ) ;
 int stub1 (struct pnfs_layout_segment*) ;

__attribute__((used)) static void free_lseg(struct pnfs_layout_segment *lseg)
{
 struct inode *ino = lseg->pls_layout->plh_inode;

 NFS_SERVER(ino)->pnfs_curr_ld->free_lseg(lseg);

 pnfs_put_layout_hdr(NFS_I(ino)->layout);
}
