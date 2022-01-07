
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_hdr {int dummy; } ;


 int FILELAYOUT_FROM_HDR (struct pnfs_layout_hdr*) ;
 int kfree (int ) ;

__attribute__((used)) static void
filelayout_free_layout_hdr(struct pnfs_layout_hdr *lo)
{
 kfree(FILELAYOUT_FROM_HDR(lo));
}
