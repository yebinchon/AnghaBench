
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnfs_layout_hdr {int plh_lc_cred; struct inode* plh_inode; int plh_bulk_recall; int plh_segs; int plh_layouts; int plh_refcount; } ;
struct nfs_open_context {TYPE_2__* state; } ;
struct inode {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {TYPE_1__* owner; } ;
struct TYPE_3__ {int so_cred; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int get_rpccred (int ) ;
 struct pnfs_layout_hdr* pnfs_alloc_layout_hdr (struct inode*,int ) ;

__attribute__((used)) static struct pnfs_layout_hdr *
alloc_init_layout_hdr(struct inode *ino,
        struct nfs_open_context *ctx,
        gfp_t gfp_flags)
{
 struct pnfs_layout_hdr *lo;

 lo = pnfs_alloc_layout_hdr(ino, gfp_flags);
 if (!lo)
  return ((void*)0);
 atomic_set(&lo->plh_refcount, 1);
 INIT_LIST_HEAD(&lo->plh_layouts);
 INIT_LIST_HEAD(&lo->plh_segs);
 INIT_LIST_HEAD(&lo->plh_bulk_recall);
 lo->plh_inode = ino;
 lo->plh_lc_cred = get_rpccred(ctx->state->owner->so_cred);
 return lo;
}
