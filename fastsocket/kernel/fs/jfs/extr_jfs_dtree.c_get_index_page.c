
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int dummy; } ;
struct inode {int dummy; } ;
typedef scalar_t__ s64 ;
typedef int s32 ;


 int PSIZE ;
 struct metapage* get_metapage (struct inode*,scalar_t__,int ,int) ;
 int xtLookup (struct inode*,scalar_t__,int,int*,scalar_t__*,int *,int) ;

__attribute__((used)) static struct metapage *get_index_page(struct inode *inode, s64 blkno)
{
 int rc;
 s64 xaddr;
 int xflag;
 s32 xlen;

 rc = xtLookup(inode, blkno, 1, &xflag, &xaddr, &xlen, 1);
 if (rc || (xaddr == 0))
  return ((void*)0);

 return get_metapage(inode, xaddr, PSIZE, 1);
}
