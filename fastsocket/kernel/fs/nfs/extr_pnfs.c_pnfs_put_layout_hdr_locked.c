
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_hdr {int plh_refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int destroy_layout_hdr (struct pnfs_layout_hdr*) ;

__attribute__((used)) static void
pnfs_put_layout_hdr_locked(struct pnfs_layout_hdr *lo)
{
 if (atomic_dec_and_test(&lo->plh_refcount))
  destroy_layout_hdr(lo);
}
