
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_range {int offset; int length; scalar_t__ iomode; } ;
typedef int s64 ;


 scalar_t__ IOMODE_READ ;

__attribute__((used)) static s64
cmp_layout(struct pnfs_layout_range *l1,
    struct pnfs_layout_range *l2)
{
 s64 d;


 d = l1->offset - l2->offset;
 if (d)
  return d;


 d = l2->length - l1->length;
 if (d)
  return d;


 return (int)(l1->iomode == IOMODE_READ) - (int)(l2->iomode == IOMODE_READ);
}
