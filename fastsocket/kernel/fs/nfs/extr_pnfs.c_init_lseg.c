
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_segment {struct pnfs_layout_hdr* pls_layout; int pls_flags; int pls_refcount; int pls_lc_list; int pls_list; } ;
struct pnfs_layout_hdr {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int NFS_LSEG_VALID ;
 int atomic_set (int *,int) ;
 int set_bit (int ,int *) ;
 int smp_mb () ;

__attribute__((used)) static void
init_lseg(struct pnfs_layout_hdr *lo, struct pnfs_layout_segment *lseg)
{
 INIT_LIST_HEAD(&lseg->pls_list);
 INIT_LIST_HEAD(&lseg->pls_lc_list);
 atomic_set(&lseg->pls_refcount, 1);
 smp_mb();
 set_bit(NFS_LSEG_VALID, &lseg->pls_flags);
 lseg->pls_layout = lo;
}
