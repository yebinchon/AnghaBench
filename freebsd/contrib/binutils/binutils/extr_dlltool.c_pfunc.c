
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ordinal; } ;
typedef TYPE_1__ export_type ;



__attribute__((used)) static int
pfunc (const void *a, const void *b)
{
  export_type *ap = *(export_type **) a;
  export_type *bp = *(export_type **) b;
  if (ap->ordinal == bp->ordinal)
    return 0;


  if (ap->ordinal == -1)
    return 1;
  if (bp->ordinal == -1)
    return -1;
  return (ap->ordinal - bp->ordinal);
}
