
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; int size; } ;
typedef TYPE_1__ fieldoff_s ;
typedef int HOST_WIDE_INT ;


 int TREE_INT_CST_LOW (int ) ;

__attribute__((used)) static int
fieldoff_compare (const void *pa, const void *pb)
{
  const fieldoff_s *foa = (const fieldoff_s *)pa;
  const fieldoff_s *fob = (const fieldoff_s *)pb;
  HOST_WIDE_INT foasize, fobsize;

  if (foa->offset != fob->offset)
    return foa->offset - fob->offset;

  foasize = TREE_INT_CST_LOW (foa->size);
  fobsize = TREE_INT_CST_LOW (fob->size);
  return foasize - fobsize;
}
